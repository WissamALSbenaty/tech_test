import 'package:fintech/features/beneficiaries/domain/models/beneficiary_model.dart';

abstract class IBeneficiariesRepository {
  Future<List<BeneficiaryModel>> getBeneficiaries();
  Future<void> addBeneficiary({
    required final String name,
  });
  Future<void> removeBeneficiary(final int id);
}
