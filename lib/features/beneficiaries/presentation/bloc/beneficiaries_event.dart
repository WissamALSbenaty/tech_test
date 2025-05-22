import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fintech/features/beneficiaries/domain/models/beneficiary_model.dart';

part 'beneficiaries_event.freezed.dart';

@freezed
class BeneficiariesEvent with _$BeneficiariesEvent {
  const factory BeneficiariesEvent.loadBeneficiaries() = _LoadBeneficiaries;
  const factory BeneficiariesEvent.addBeneficiary({
    required String name,
    required String phoneNumber,
  }) = _AddBeneficiary;
  const factory BeneficiariesEvent.removeBeneficiary(String id) =
      _RemoveBeneficiary;
}
