import 'package:fintech/features/beneficiaries/domain/repositories/abstract/i_beneficiaries_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class RemoveBeneficiaryUseCase {
  final IBeneficiariesRepository _repository;

  RemoveBeneficiaryUseCase(this._repository);

  Future<void> call(String id) async {
    if (id.isEmpty) {
      throw Exception('ID cannot be empty');
    }

    await _repository.removeBeneficiary(id);
  }
}
