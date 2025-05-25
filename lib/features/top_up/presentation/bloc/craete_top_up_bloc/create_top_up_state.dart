import 'package:fintech/core/data/errors/custom_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fintech/features/beneficiaries/domain/models/beneficiary_model.dart';

part 'create_top_up_state.freezed.dart';

@freezed
class CreateTopUpState with _$CreateTopUpState {
  const factory CreateTopUpState.loading() = Loading;
  const factory CreateTopUpState.loaded({
    required final List<BeneficiaryModel> beneficiaries,
    @Default(false)  final bool isSubmittingRequest,
    final int? selectedBeneficiaryId,
    final int? selectedTopUpAmount,

  }) = Loaded;
  const factory CreateTopUpState.error(final CustomError error) = Error;
}
