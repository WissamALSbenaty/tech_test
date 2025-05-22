import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fintech/features/beneficiaries/domain/models/beneficiary_model.dart';
import 'package:fintech/features/top_up/domain/models/top_up_option_model.dart';

part 'top_up_state.freezed.dart';

@freezed
class TopUpState with _$TopUpState {
  const factory TopUpState.initial() = _Initial;
  const factory TopUpState.loading() = _Loading;
  const factory TopUpState.loaded({
    required List<TopUpOptionModel> options,
    required List<BeneficiaryModel> beneficiaries,
    TopUpOptionModel? selectedOption,
    BeneficiaryModel? selectedBeneficiary,
  }) = _Loaded;
  const factory TopUpState.error(String message) = _Error;
  const factory TopUpState.success() = _Success;
}
