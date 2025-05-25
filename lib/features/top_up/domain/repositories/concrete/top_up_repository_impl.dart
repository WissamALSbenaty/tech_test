import 'package:fintech/features/top_up/data/datasources/abstract/i_top_up_data_source.dart';
import 'package:fintech/features/top_up/data/dtos/top_up_dto.dart';
import 'package:fintech/features/top_up/domain/models/top_up_history_model.dart';
import 'package:injectable/injectable.dart';
import 'package:fintech/features/top_up/domain/repositories/abstract/i_top_up_repository.dart';

@LazySingleton(as: ITopUpRepository)
class TopUpRepository implements ITopUpRepository {
  final ITopUpDataSource _dataSource;

  TopUpRepository(this._dataSource);

  @override
  Future<void> executeTopUp({
    required final int beneficiaryId,
    required final int amount,
  })=> _dataSource.executeTopUp(
        topUpDto: TopUpDto(beneficiaryId: beneficiaryId, amount: amount));

  @override
  Future<List<TopUpHistoryModel>> getTopUpHistory()async=> (await _dataSource.getTopUpHistory()).map(
  TopUpHistoryModel.fromEntity).toList();
}
