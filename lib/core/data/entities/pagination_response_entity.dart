import 'package:json_annotation/json_annotation.dart';
import 'package:fintech/core/data/entities/response_entity.dart';

part 'pagination_response_entity.g.dart';

@JsonSerializable()
class PaginationResponseEntity extends ResponseEntity {
  final int totalItems;
  final List<dynamic> items;
  PaginationResponseEntity({required this.totalItems, required this.items})
      : super(data: null);

  factory PaginationResponseEntity.fromJson(
          {required final Map<String, dynamic> json}) =>
      _$PaginationResponseEntityFromJson(json);
}
