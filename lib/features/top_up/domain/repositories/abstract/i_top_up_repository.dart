import 'package:fintech/features/top_up/data/entities/top_up_option_entity.dart';
import 'package:fintech/features/top_up/domain/models/top_up_option_model.dart';

abstract class ITopUpRepository {
  Future<List<TopUpOptionModel>> getTopUpOptions();
  Future<void> executeTopUp({
    required TopUpOptionEntity option,
    required String beneficiaryId,
  });
}
