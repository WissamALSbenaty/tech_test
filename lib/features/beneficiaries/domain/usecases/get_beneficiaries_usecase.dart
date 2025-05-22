import 'package:fintech/features/beneficiaries/domain/models/beneficiary_model.dart';
import 'package:fintech/features/beneficiaries/domain/repositories/abstract/i_beneficiaries_repository.dart';
import 'package:injectable/injectable.dart';
@injectable
class GetBeneficiariesUseCase {
  final IBeneficiariesRepository _repository;

  GetBeneficiariesUseCase(this._repository);

  Future<List<BeneficiaryModel>> call() async {
    return await _repository.getBeneficiaries();
  }
}
