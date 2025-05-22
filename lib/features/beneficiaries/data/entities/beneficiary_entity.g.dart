// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BeneficiaryEntity _$BeneficiaryEntityFromJson(Map<String, dynamic> json) =>
    BeneficiaryEntity(
      id: json['id'] as String,
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      monthlyTopUpLimit: (json['monthlyTopUpLimit'] as num?)?.toDouble() ?? 0.0,
      currentMonthTopUp: (json['currentMonthTopUp'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$BeneficiaryEntityToJson(BeneficiaryEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'monthlyTopUpLimit': instance.monthlyTopUpLimit,
      'currentMonthTopUp': instance.currentMonthTopUp,
    };
