import 'package:fintech/features/top_up/data/dtos/top_up_dto.dart';
import 'package:fintech/features/top_up/data/entities/top_up_history_entity.dart';

abstract class ITopUpDataSource {
  Future<void> executeTopUp({
    required final TopUpDto topUpDto,
  });
  Future<List<TopUpHistoryEntity>> getTopUpHistory();
}
