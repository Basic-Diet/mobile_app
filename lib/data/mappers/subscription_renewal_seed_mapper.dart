import 'package:basic_diet/data/response/subscription_renewal_seed_response.dart';
import 'package:basic_diet/domain/model/subscription_renewal_seed_model.dart';

extension SubscriptionRenewalSeedResponseMapper
    on SubscriptionRenewalSeedResponse? {
  SubscriptionRenewalSeedModel toDomain() {
    return SubscriptionRenewalSeedModel(data: this?.data ?? const {});
  }
}
