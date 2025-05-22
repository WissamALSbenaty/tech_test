import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_up_option_entity.freezed.dart';
part 'top_up_option_entity.g.dart';

@freezed
class TopUpOptionEntity with _$TopUpOptionEntity {
  const factory TopUpOptionEntity({
    required double amount,
    @Default(false) bool isSelected,
  }) = _TopUpOptionEntity;

  factory TopUpOptionEntity.fromJson(Map<String, dynamic> json) =>
      _$TopUpOptionEntityFromJson(json);
}
