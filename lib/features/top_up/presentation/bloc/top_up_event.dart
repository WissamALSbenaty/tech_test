import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fintech/features/beneficiaries/domain/models/beneficiary_model.dart';
import 'package:fintech/features/top_up/domain/models/top_up_option_model.dart';

part 'top_up_event.freezed.dart';

@freezed
class TopUpEvent with _$TopUpEvent {
  const factory TopUpEvent.loadInitialData() = _LoadInitialData;
  const factory TopUpEvent.selectTopUpOption(TopUpOptionModel option) =
      _SelectTopUpOption;
  const factory TopUpEvent.selectBeneficiary(BeneficiaryModel beneficiary) =
      _SelectBeneficiary;
  const factory TopUpEvent.executeTopUp({
    required TopUpOptionModel option,
    required BeneficiaryModel beneficiary,
  }) = _ExecuteTopUp;
}
