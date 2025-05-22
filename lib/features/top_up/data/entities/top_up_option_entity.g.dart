// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_up_option_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopUpOptionEntityImpl _$$TopUpOptionEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$TopUpOptionEntityImpl(
      amount: (json['amount'] as num).toDouble(),
      isSelected: json['isSelected'] as bool? ?? false,
    );

Map<String, dynamic> _$$TopUpOptionEntityImplToJson(
        _$TopUpOptionEntityImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'isSelected': instance.isSelected,
    };
