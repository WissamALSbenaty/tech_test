import 'package:json_annotation/json_annotation.dart';

part 'beneficiary_dto.g.dart';

@JsonSerializable()
class BeneficiaryDto {
  final String nickname;

  const BeneficiaryDto({required this.nickname});

  factory BeneficiaryDto.fromJson(final Map<String, dynamic> json) =>
      _$BeneficiaryDtoFromJson(json);

  Map<String, dynamic> toJson() => _$BeneficiaryDtoToJson(this);
}
