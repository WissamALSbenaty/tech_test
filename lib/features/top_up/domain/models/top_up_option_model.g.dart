// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_up_option_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopUpOptionModelImpl _$$TopUpOptionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TopUpOptionModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$$TopUpOptionModelImplToJson(
        _$TopUpOptionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'amount': instance.amount,
    };
