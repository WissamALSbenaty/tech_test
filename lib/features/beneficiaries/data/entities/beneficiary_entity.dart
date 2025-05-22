import 'package:json_annotation/json_annotation.dart';

part 'beneficiary_entity.g.dart';

@JsonSerializable()
class BeneficiaryEntity {
  final String id;
  final String name;
  final String phoneNumber;
  @JsonKey(defaultValue: 0.0)
  final double monthlyTopUpLimit;
  @JsonKey(defaultValue: 0.0) 
  final double currentMonthTopUp;

  const BeneficiaryEntity({
    required this.id,
    required this.name,
    required this.phoneNumber,
    this.monthlyTopUpLimit = 0.0,
    this.currentMonthTopUp = 0.0,
  });

  factory BeneficiaryEntity.fromJson(Map<String, dynamic> json) =>
      _$BeneficiaryEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BeneficiaryEntityToJson(this);
}
