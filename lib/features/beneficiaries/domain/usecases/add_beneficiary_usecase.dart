import 'package:fintech/features/beneficiaries/domain/repositories/abstract/i_beneficiaries_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AddBeneficiaryUseCase {
  final IBeneficiariesRepository _repository;

  AddBeneficiaryUseCase(this._repository);

  Future<void> call({
    required final String name,
  })=> _repository.addBeneficiary(
      name: name,
    );
}
