import 'package:fintech/features/beneficiaries/domain/models/beneficiary_model.dart';

abstract class IBeneficiariesRepository {
  Future<List<BeneficiaryModel>> getBeneficiaries();
  Future<void> addBeneficiary({
    required String name,
    required String phoneNumber,
  });
  Future<void> removeBeneficiary(String id);
}
