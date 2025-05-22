import 'package:freezed_annotation/freezed_annotation.dart';

part 'beneficiary.freezed.dart';

@freezed
class Beneficiary with _$Beneficiary {
  const factory Beneficiary({
    required String id,
    required String name,
    required String phoneNumber,
    @Default(0.0) double monthlyTopUpLimit,
    @Default(0.0) double currentMonthTopUp,
  }) = _Beneficiary;
}
