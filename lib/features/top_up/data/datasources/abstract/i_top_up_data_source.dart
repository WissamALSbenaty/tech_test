import 'package:fintech/features/top_up/data/entities/top_up_option_entity.dart';

abstract class ITopUpDataSource {
  Future<List<TopUpOptionEntity>> getTopUpOptions();
  Future<void> executeTopUp({
    required TopUpOptionEntity option,
    required String beneficiaryId,
  });
}
