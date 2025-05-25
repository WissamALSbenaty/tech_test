import 'package:fintech/features/top_up/domain/repositories/abstract/i_top_up_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ExecuteTopUpUseCase {
  final ITopUpRepository _repository;

  ExecuteTopUpUseCase(this._repository);

  Future<void> call({
    required final int beneficiaryId,
    required final int amount,
  }) async {
    await _repository.executeTopUp(
      beneficiaryId: beneficiaryId,
      amount: amount,
    );
  }
}
