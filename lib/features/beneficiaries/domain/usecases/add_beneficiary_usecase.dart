import 'package:fintech/features/beneficiaries/domain/repositories/abstract/i_beneficiaries_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddBeneficiaryUseCase {
  final IBeneficiariesRepository _repository;

  AddBeneficiaryUseCase(this._repository);

  Future<void> call({
    required String name,
    required String phoneNumber,
  }) async {
    if (name.isEmpty) {
      throw Exception('Name cannot be empty');
    }
    if (phoneNumber.isEmpty) {
      throw Exception('Phone number cannot be empty');
    }

    await _repository.addBeneficiary(
      name: name,
      phoneNumber: phoneNumber,
    );
  }
}
