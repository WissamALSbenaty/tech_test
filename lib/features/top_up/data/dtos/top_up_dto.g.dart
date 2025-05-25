// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_up_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopUpDto _$TopUpDtoFromJson(Map<String, dynamic> json) => TopUpDto(
      beneficiaryId: (json['beneficiaryId'] as num).toInt(),
      amount: (json['amount'] as num).toInt(),
    );

Map<String, dynamic> _$TopUpDtoToJson(TopUpDto instance) => <String, dynamic>{
      'beneficiaryId': instance.beneficiaryId,
      'amount': instance.amount,
    };
