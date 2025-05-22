// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BeneficiaryImpl _$$BeneficiaryImplFromJson(Map<String, dynamic> json) =>
    _$BeneficiaryImpl(
      id: json['id'] as String,
      phoneNumber: json['phoneNumber'] as String,
      nickname: json['nickname'] as String,
      monthlyTopUpLimit: (json['monthlyTopUpLimit'] as num).toDouble(),
      currentMonthTopUp: (json['currentMonthTopUp'] as num).toDouble(),
    );

Map<String, dynamic> _$$BeneficiaryImplToJson(_$BeneficiaryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phoneNumber': instance.phoneNumber,
      'nickname': instance.nickname,
      'monthlyTopUpLimit': instance.monthlyTopUpLimit,
      'currentMonthTopUp': instance.currentMonthTopUp,
    };
