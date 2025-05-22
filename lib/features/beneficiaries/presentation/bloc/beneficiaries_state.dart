import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fintech/features/beneficiaries/domain/models/beneficiary_model.dart';

part 'beneficiaries_state.freezed.dart';

@freezed
class BeneficiariesState with _$BeneficiariesState {
  const factory BeneficiariesState.initial() = _Initial;
  const factory BeneficiariesState.loading() = _Loading;
  const factory BeneficiariesState.loaded(
      List<BeneficiaryModel> beneficiaries) = _Loaded;
  const factory BeneficiariesState.error(String message) = _Error;
}
