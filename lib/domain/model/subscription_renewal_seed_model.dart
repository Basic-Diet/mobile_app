import 'package:equatable/equatable.dart';

class SubscriptionRenewalSeedModel extends Equatable {
  final Map<String, dynamic> data;

  const SubscriptionRenewalSeedModel({required this.data});

  @override
  List<Object?> get props => [data];
}
