import 'package:fintech/features/top_up/domain/models/top_up_history_model.dart';
import 'package:fintech/features/top_up/domain/repositories/abstract/i_top_up_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetTopUpHistoryUseCase {
  final ITopUpRepository _repository;

  GetTopUpHistoryUseCase(this._repository);

  Future<List<TopUpHistoryModel>> call()=> _repository.getTopUpHistory();
}
