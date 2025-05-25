import 'package:json_annotation/json_annotation.dart';

part 'login_dto.g.dart';

@JsonSerializable()
class LoginDto {
  final String phoneNumber;
  final bool isVerified;

  const LoginDto({required this.phoneNumber, required this.isVerified});

  factory LoginDto.fromJson(final Map<String, dynamic> json) =>
      _$LoginDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LoginDtoToJson(this);
}
