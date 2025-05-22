import 'package:injectable/injectable.dart';
import 'package:fintech/features/top_up/domain/models/top_up_option_model.dart';
import 'package:fintech/features/top_up/domain/repositories/itop_up_repository.dart';

@injectable
class GetTopUpOptionsUseCase {
  final ITopUpRepository _repository;

  GetTopUpOptionsUseCase(this._repository);

  Future<List<TopUpOptionModel>> call() async {
    return await _repository.getTopUpOptions();
  }
}
