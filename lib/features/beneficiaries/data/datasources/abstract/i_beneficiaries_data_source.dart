import 'package:fintech/features/beneficiaries/data/dtos/beneficiary_dto.dart';
import 'package:fintech/features/beneficiaries/data/entities/beneficiary_entity.dart';

abstract class IBeneficiariesDataSource {
  Future<List<BeneficiaryEntity>> getBeneficiaries();

  Future<void> addBeneficiary({
    required final BeneficiaryDto beneficiaryDto,
  });

  Future<void> removeBeneficiary(final int id);
}
