import 'package:fintech/features/top_up/domain/models/top_up_history_model.dart';

abstract class ITopUpRepository {
  Future<void> executeTopUp({
    required final int beneficiaryId,
    required final int amount,
  });

  Future<List<TopUpHistoryModel>> getTopUpHistory();
}
