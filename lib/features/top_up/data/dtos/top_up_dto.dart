import 'package:json_annotation/json_annotation.dart';

part 'top_up_dto.g.dart';

@JsonSerializable()
class TopUpDto {
  final int beneficiaryId;
  final int amount;

  const TopUpDto({
    required this.beneficiaryId,
    required this.amount,
  });

  factory TopUpDto.fromJson(final Map<String, dynamic> json) =>
      _$TopUpDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TopUpDtoToJson(this);
}
