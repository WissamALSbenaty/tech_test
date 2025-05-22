import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fintech/features/beneficiaries/data/entities/beneficiary_entity.dart';

part 'beneficiary_model.freezed.dart';

@freezed
class BeneficiaryModel with _$BeneficiaryModel {
  const factory BeneficiaryModel({
    required String id,
    required String name,
    required String phoneNumber,
    @Default(0.0) double monthlyTopUpLimit,
    @Default(0.0) double currentMonthTopUp,
  }) = _BeneficiaryModel;

  factory BeneficiaryModel.fromEntity(BeneficiaryEntity entity) {
    return BeneficiaryModel(
      id: entity.id,
      name: entity.name,
      phoneNumber: entity.phoneNumber,
      monthlyTopUpLimit: entity.monthlyTopUpLimit,
      currentMonthTopUp: entity.currentMonthTopUp,
    );
  }
}
