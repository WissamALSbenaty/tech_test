import 'package:fintech/features/beneficiaries/data/entities/beneficiary_entity.dart';

abstract class IBeneficiariesDataSource {
  Future<List<BeneficiaryEntity>> getBeneficiaries();

  Future<void> addBeneficiary({
    required String name,
    required String phoneNumber,
  });

  Future<void> removeBeneficiary(String id);
}
