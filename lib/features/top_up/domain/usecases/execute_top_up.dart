import 'package:injectable/injectable.dart';
import 'package:fintech/features/top_up/domain/models/top_up_option_model.dart';
import 'package:fintech/features/beneficiaries/domain/models/beneficiary_model.dart';
import 'package:fintech/features/top_up/domain/repositories/itop_up_repository.dart';

@injectable
class ExecuteTopUpUseCase {
  final ITopUpRepository _repository;

  ExecuteTopUpUseCase(this._repository);

  Future<void> call({
    required TopUpOptionModel option,
    required BeneficiaryModel beneficiary,
  }) async {
    await _repository.executeTopUp(
      option: option,
      beneficiary: beneficiary,
    );
  }
}
