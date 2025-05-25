// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginDto _$LoginDtoFromJson(Map<String, dynamic> json) => LoginDto(
      phoneNumber: json['phoneNumber'] as String,
      isVerified: json['isVerified'] as bool,
    );

Map<String, dynamic> _$LoginDtoToJson(LoginDto instance) => <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'isVerified': instance.isVerified,
    };
