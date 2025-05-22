// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_up_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopUpOptionImpl _$$TopUpOptionImplFromJson(Map<String, dynamic> json) =>
    _$TopUpOptionImpl(
      amount: (json['amount'] as num).toDouble(),
      isSelected: json['isSelected'] as bool? ?? false,
    );

Map<String, dynamic> _$$TopUpOptionImplToJson(_$TopUpOptionImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'isSelected': instance.isSelected,
    };
