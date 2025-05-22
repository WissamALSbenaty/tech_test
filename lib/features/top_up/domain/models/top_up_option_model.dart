import 'package:json_annotation/json_annotation.dart';
import 'package:fintech/features/top_up/data/entities/top_up_option_entity.dart';

part 'top_up_option_model.g.dart';

@JsonSerializable()
class TopUpOptionModel {
  @JsonKey(name: 'amount')
  final double amount;

  @JsonKey(name: 'is_selected', defaultValue: false)
  final bool isSelected;

  const TopUpOptionModel({
    required this.amount,
    this.isSelected = false,
  });

  factory TopUpOptionModel.fromJson(Map<String, dynamic> json) =>
      _$TopUpOptionModelFromJson(json);

  Map<String, dynamic> toJson() => _$TopUpOptionModelToJson(this);

  factory TopUpOptionModel.fromEntity(TopUpOptionEntity entity) {
    return TopUpOptionModel(
      amount: entity.amount,
      isSelected: entity.isSelected,
    );
  }
}
