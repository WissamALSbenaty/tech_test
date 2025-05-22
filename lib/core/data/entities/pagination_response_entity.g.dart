// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginationResponseEntity _$PaginationResponseEntityFromJson(
        Map<String, dynamic> json) =>
    PaginationResponseEntity(
      totalItems: (json['totalItems'] as num).toInt(),
      items: json['items'] as List<dynamic>,
    );

Map<String, dynamic> _$PaginationResponseEntityToJson(
        PaginationResponseEntity instance) =>
    <String, dynamic>{
      'totalItems': instance.totalItems,
      'items': instance.items,
    };
