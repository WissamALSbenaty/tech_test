import 'package:freezed_annotation/freezed_annotation.dart';

part 'beneficiaries_failure.freezed.dart';

@freezed
class BeneficiariesFailure with _$BeneficiariesFailure {
  const factory BeneficiariesFailure.serverError() = _ServerError;
  const factory BeneficiariesFailure.networkError() = _NetworkError;
  const factory BeneficiariesFailure.invalidPhoneNumber() = _InvalidPhoneNumber;
  const factory BeneficiariesFailure.duplicateBeneficiary() =
      _DuplicateBeneficiary;
}
