import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_up_failure.freezed.dart';

@freezed
class TopUpFailure with _$TopUpFailure {
  const factory TopUpFailure.serverError() = _ServerError;
  const factory TopUpFailure.networkError() = _NetworkError;
  const factory TopUpFailure.insufficientBalance() = _InsufficientBalance;
  const factory TopUpFailure.monthlyLimitExceeded() = _MonthlyLimitExceeded;
  const factory TopUpFailure.invalidAmount() = _InvalidAmount;
}
