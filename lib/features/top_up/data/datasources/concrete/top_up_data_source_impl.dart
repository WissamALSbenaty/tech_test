import 'package:injectable/injectable.dart';
import 'package:fintech/features/top_up/data/datasources/abstract/i_top_up_data_source.dart';
import 'package:fintech/features/top_up/data/entities/top_up_option_entity.dart';

@Injectable(as: ITopUpDataSource)
class TopUpDataSourceImpl implements ITopUpDataSource {
  @override
  Future<List<TopUpOptionEntity>> getTopUpOptions() async {
    // TODO: Implement API call
    return [];
  }

  @override
  Future<void> executeTopUp({
    required String beneficiaryId,
    required TopUpOptionEntity option,
  }) async {
    // TODO: Implement API call
  }
}
