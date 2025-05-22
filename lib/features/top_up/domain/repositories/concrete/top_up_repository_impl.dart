import 'package:fintech/features/top_up/data/datasources/abstract/i_top_up_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:fintech/features/top_up/domain/models/top_up_option_model.dart';
import 'package:fintech/features/top_up/domain/repositories/abstract/i_top_up_repository.dart';

@Injectable(as: ITopUpRepository)
class TopUpRepositoryImpl implements ITopUpRepository {
    final ITopUpDataSource _dataSource;

  TopUpRepositoryImpl(this._dataSource);

  @override
  Future<List<TopUpOptionModel>> getTopUpOptions() async {
    try {
      final entities = await _dataSource.getTopUpOptions();
      return entities.map((entity) => TopUpOptionModel.fromEntity(entity)).toList();
    } catch (e) {
      throw Exception('Failed to get top-up options');
    }
  }

  @override
  Future<void> executeTopUp({
    required String beneficiaryId,
    required TopUpOptionModel option,
  }) async {
    try {
      await _dataSource.executeTopUp(
        beneficiaryId: beneficiaryId,
        option: option.toEntity(),
      );
    } catch (e) {
      throw Exception('Failed to execute top-up');
    }
  }
}
