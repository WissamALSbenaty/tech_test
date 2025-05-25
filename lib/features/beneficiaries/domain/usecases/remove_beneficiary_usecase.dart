import 'package:fintech/features/beneficiaries/domain/repositories/abstract/i_beneficiaries_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class RemoveBeneficiaryUseCase {
  final IBeneficiariesRepository _repository;

  RemoveBeneficiaryUseCase(this._repository);

  Future<void> call(final int id)=>
    _repository.removeBeneficiary(id);
}
