import 'package:basic_diet/app/app_pref.dart';
import 'package:basic_diet/app/constants.dart';
import 'package:basic_diet/domain/model/order_menu_model.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_bloc.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_event.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_state.dart';
import 'package:basic_diet/presentation/main/menu/models/menu_models.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/auth_gate.dart';

String initials(String value, BuildContext context) {
  final cleaned = value.trim();
  if (cleaned.isEmpty) {
    return context.locale.languageCode == 'ar' ? 'ب' : 'B';
  }

  final words = cleaned.split(' ').where((part) => part.isNotEmpty).toList();
  if (words.length == 1) {
    return words.first.characters.take(2).toString();
  }
  return words.take(2).map((word) => word.characters.first).join();
}

String productDescription(OrderMenuProductModel product, BuildContext context) {
  final localeCode = context.locale.toString();
  final backendDescription = product.displayDescription(
    localeCode,
    fallback: '',
  );
  if (backendDescription.trim().isNotEmpty) {
    return backendDescription;
  }

  return Strings.customOrderSubtitle.tr();
}

String formatHalala(int halala, String currency) {
  final value = halala / 100;
  final display =
      value % 1 == 0 ? value.toStringAsFixed(0) : value.toStringAsFixed(2);
  return '$display $currency';
}

String productPriceLabel(OrderMenuProductModel product, String currency) {
  final initialChoice =
      product.requiresWeightSelection
          ? product.weightPricing?.initialChoice
          : null;
  final price = formatHalala(
    initialChoice?.priceHalala ?? product.priceHalala,
    currency,
  );
  if (product.requiresWeightSelection) {
    final weightGrams =
        initialChoice?.weightGrams ??
        (product.defaultWeightGrams > 0
            ? product.defaultWeightGrams
            : product.minWeightGrams);
    return '$price / ${Strings.grams.tr(args: [weightGrams.toString()])}';
  }
  return price;
}

bool hasReachedMaxSelections(int selectedCount, int? maxSelections) {
  return maxSelections != null && selectedCount >= maxSelections;
}

String selectionCountLabel(int selectedCount, int? maxSelections) {
  if (maxSelections == null) {
    return selectedCount.toString();
  }
  return '$selectedCount/$maxSelections';
}

String productCtaLabel(OrderMenuProductModel product, BuildContext context) {
  final ctaLabel = product.ctaLabel.trim();
  if (ctaLabel.isNotEmpty) {
    final translated = ctaLabel.tr();
    return translated == ctaLabel ? ctaLabel : translated;
  }
  if (product.resolvedRequiresBuilder) {
    return Strings.startCustomization.tr();
  }
  return Strings.addToCart.tr();
}

String? resolveImageUrl(String? imageUrl) {
  final value = imageUrl?.trim();
  if (value == null || value.isEmpty) {
    return null;
  }

  final uri = Uri.tryParse(value);
  if (uri == null || uri.hasScheme) {
    return value;
  }

  return Uri.parse(Constants.baseUrl).resolveUri(uri).toString();
}

CartItem? directCartItem(CartState state, String productId) {
  if (state is! CartLoaded) {
    return null;
  }

  for (final item in state.items) {
    if (item.productId == productId &&
        item.selectedOptions.isEmpty &&
        item.weightGrams == null) {
      return item;
    }
  }

  return null;
}

List<OptionSectionData> optionSections(
  OrderMenuOptionGroupModel group,
  List<OrderMenuOptionModel> options,
) {
  if (group.optionSections.isEmpty) {
    return [const OptionSectionData(title: '', options: [])]
        .map(
          (section) =>
              OptionSectionData(title: section.title, options: options),
        )
        .toList();
  }

  final optionsById = {
    for (final option in options) option.optionId: option,
    for (final option in options) option.id: option,
  };
  final usedIds = <String>{};
  final sections = <OptionSectionData>[];
  final sortedSections = [...group.optionSections]
    ..sort((a, b) => a.sortOrder.compareTo(b.sortOrder));

  for (final section in sortedSections) {
    final sectionOptions = <OrderMenuOptionModel>[];
    for (final optionId in section.optionIds) {
      final option = optionsById[optionId];
      if (option != null && !sectionOptions.contains(option)) {
        sectionOptions.add(option);
        usedIds.add(option.optionId);
        usedIds.add(option.id);
      }
    }

    if (sectionOptions.isEmpty && section.proteinFamilyKey.isNotEmpty) {
      for (final option in options) {
        if (option.proteinFamilyKey == section.proteinFamilyKey) {
          sectionOptions.add(option);
          usedIds.add(option.optionId);
          usedIds.add(option.id);
        }
      }
    }

    if (sectionOptions.isEmpty) {
      continue;
    }

    sections.add(
      OptionSectionData(
        title: section.name.isNotEmpty ? section.name : section.key,
        options: sectionOptions,
      ),
    );
  }

  final unsectioned =
      options
          .where(
            (option) =>
                !usedIds.contains(option.optionId) &&
                !usedIds.contains(option.id),
          )
          .toList();
  if (unsectioned.isNotEmpty) {
    sections.add(OptionSectionData(title: '', options: unsectioned));
  }

  return sections.isEmpty
      ? [OptionSectionData(title: '', options: options)]
      : sections;
}

Future<void> openCart(BuildContext context) async {
  if (!await requireAuthenticated(context)) {
    return;
  }

  if (!context.mounted) {
    return;
  }

  context.push('/cart');
}
