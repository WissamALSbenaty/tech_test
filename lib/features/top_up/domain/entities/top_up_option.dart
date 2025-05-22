import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_up_option.freezed.dart';
part 'top_up_option.g.dart';

@freezed
class TopUpOption with _$TopUpOption {
  const factory TopUpOption({
    required double amount,
    @Default(false) bool isSelected,
  }) = _TopUpOption;

  factory TopUpOption.fromJson(Map<String, dynamic> json) =>
      _$TopUpOptionFromJson(json);
}
