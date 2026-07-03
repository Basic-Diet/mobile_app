import 'package:easy_localization/easy_localization.dart';
import 'package:basic_diet/app/constants.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentWebViewScreen extends StatefulWidget {
  static const String routeName = '/payment-webview';

  final String paymentUrl;
  final String successUrl;
  final String backUrl;

  const PaymentWebViewScreen({
    super.key,
    required this.paymentUrl,
    required this.successUrl,
    required this.backUrl,
  });

  @override
  State<PaymentWebViewScreen> createState() => _PaymentWebViewScreenState();
}

class _PaymentWebViewScreenState extends State<PaymentWebViewScreen> {
  late final WebViewController _controller;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..setNavigationDelegate(
            NavigationDelegate(
              onPageStarted: (url) {
                setState(() => _isLoading = true);
              },
              onPageFinished: (url) {
                setState(() => _isLoading = false);
              },
              onNavigationRequest: (request) {
                final url = request.url;
                if (paymentCallbackMatches(url, widget.successUrl)) {
                  context.pop(true);
                  return NavigationDecision.prevent;
                }
                if (paymentCallbackMatches(url, widget.backUrl)) {
                  context.pop(false);
                  return NavigationDecision.prevent;
                }
                return NavigationDecision.navigate;
              },
            ),
          )
          ..loadRequest(Uri.parse(widget.paymentUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backgroundSurface,
      appBar: AppBar(
        backgroundColor: ColorManager.backgroundSurface,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => context.pop(false),
        ),
        title: Text(
          Strings.redirectingToPayment.tr(),
          style: getBoldTextStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSizeManager.s16.sp,
          ),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsetsDirectional.fromSTEB(
                  AppPadding.p16.w,
                  AppPadding.p12.h,
                  AppPadding.p16.w,
                  AppPadding.p12.h,
                ),
                color: ColorManager.brandPrimaryTint,
                child: Text(
                  Strings.redirectingToPaymentSubtitle.tr(
                    args: [Constants.merchantDisplayName],
                  ),
                  style: getRegularTextStyle(
                    color: ColorManager.textPrimary,
                    fontSize: FontSizeManager.s12.sp,
                  ),
                ),
              ),
              Expanded(child: WebViewWidget(controller: _controller)),
            ],
          ),
          if (_isLoading) const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}

bool paymentCallbackMatches(String currentUrl, String callbackUrl) {
  final current = Uri.tryParse(currentUrl);
  final callback = Uri.tryParse(callbackUrl);

  if (current == null || callback == null) {
    return currentUrl == callbackUrl;
  }

  return current.scheme.toLowerCase() == callback.scheme.toLowerCase() &&
      current.host.toLowerCase() == callback.host.toLowerCase() &&
      _normalizedPort(current) == _normalizedPort(callback) &&
      _normalizedPath(current) == _normalizedPath(callback);
}

int _normalizedPort(Uri uri) {
  if (uri.hasPort) return uri.port;
  if (uri.scheme.toLowerCase() == 'https') return 443;
  if (uri.scheme.toLowerCase() == 'http') return 80;
  return 0;
}

String _normalizedPath(Uri uri) {
  final path = uri.path.toLowerCase();
  if (path.length > 1 && path.endsWith('/')) {
    return path.substring(0, path.length - 1);
  }
  return path;
}
