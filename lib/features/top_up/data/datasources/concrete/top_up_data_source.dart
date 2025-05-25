import 'package:fintech/core/data/local_database/databases/abstract/i_app_local_database.dart';
import 'package:fintech/features/top_up/data/dtos/top_up_dto.dart';
import 'package:fintech/features/top_up/data/entities/top_up_history_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:fintech/features/top_up/data/datasources/abstract/i_top_up_data_source.dart';

@Injectable(as: ITopUpDataSource)
class TopUpDataSource implements ITopUpDataSource {
  final IAppLocalDatabase localDatabase;

  TopUpDataSource(this.localDatabase);

  @override
  Future<void> executeTopUp({
    required final TopUpDto topUpDto,
  })=> localDatabase.createTopUp(
      amount: topUpDto.amount,
      beneficiaryId: topUpDto.beneficiaryId,
  );

  @override
  Future<List<TopUpHistoryEntity>> getTopUpHistory()=> localDatabase.getTopUpHistories();
}
