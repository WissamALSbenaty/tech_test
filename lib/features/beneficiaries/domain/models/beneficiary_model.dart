import 'package:fintech/features/beneficiaries/data/entities/beneficiary_entity.dart';

class BeneficiaryModel {
  final int id;
  final String name;

  const BeneficiaryModel({
    required this.id,
    required this.name,
  });

  factory BeneficiaryModel.fromEntity(final BeneficiaryEntity entity) {
    return BeneficiaryModel(
      id: entity.id,
      name: entity.nickname,
    );
  }

  BeneficiaryEntity toEntity() {
    return BeneficiaryEntity(
      id: id,
      nickname: name,
    );
  }
}
