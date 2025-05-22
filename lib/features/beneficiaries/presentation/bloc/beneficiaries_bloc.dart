import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fintech/features/beneficiaries/domain/usecases/get_beneficiaries_usecase.dart';
import 'package:fintech/features/beneficiaries/domain/usecases/add_beneficiary_usecase.dart';
import 'package:fintech/features/beneficiaries/domain/usecases/remove_beneficiary_usecase.dart';
import 'package:fintech/features/beneficiaries/presentation/bloc/beneficiaries_event.dart';
import 'package:fintech/features/beneficiaries/presentation/bloc/beneficiaries_state.dart';

class BeneficiariesBloc extends Bloc<BeneficiariesEvent, BeneficiariesState> {
  final GetBeneficiariesUseCase _getBeneficiariesUseCase;
  final AddBeneficiaryUseCase _addBeneficiaryUseCase;
  final RemoveBeneficiaryUseCase _removeBeneficiaryUseCase;

  BeneficiariesBloc({
    required GetBeneficiariesUseCase getBeneficiariesUseCase,
    required AddBeneficiaryUseCase addBeneficiaryUseCase,
    required RemoveBeneficiaryUseCase removeBeneficiaryUseCase,
  })  : _getBeneficiariesUseCase = getBeneficiariesUseCase,
        _addBeneficiaryUseCase = addBeneficiaryUseCase,
        _removeBeneficiaryUseCase = removeBeneficiaryUseCase,
        super(const BeneficiariesState.initial()) {
    on<BeneficiariesEvent>(_onEvent);
  }

  Future<void> _onEvent(
    BeneficiariesEvent event,
    Emitter<BeneficiariesState> emit,
  ) async {
    await event.map(
      loadBeneficiaries: (_) => _onLoadBeneficiaries(emit),
      addBeneficiary: (e) => _onAddBeneficiary(e, emit),
      removeBeneficiary: (e) => _onRemoveBeneficiary(e, emit),
    );
  }

  Future<void> _onLoadBeneficiaries(Emitter<BeneficiariesState> emit) async {
    emit(const BeneficiariesState.loading());
    try {
      final beneficiaries = await _getBeneficiariesUseCase();
      emit(BeneficiariesState.loaded(beneficiaries));
    } catch (e) {
      emit(BeneficiariesState.error(e.toString()));
    }
  }

  Future<void> _onAddBeneficiary(
    _AddBeneficiary event,
    Emitter<BeneficiariesState> emit,
  ) async {
    try {
      await _addBeneficiaryUseCase(
        name: event.name,
        phoneNumber: event.phoneNumber,
      );
      add(const BeneficiariesEvent.loadBeneficiaries());
    } catch (e) {
      emit(BeneficiariesState.error(e.toString()));
    }
  }

  Future<void> _onRemoveBeneficiary(
    _RemoveBeneficiary event,
    Emitter<BeneficiariesState> emit,
  ) async {
    try {
      await _removeBeneficiaryUseCase(event.id);
      add(const BeneficiariesEvent.loadBeneficiaries());
    } catch (e) {
      emit(BeneficiariesState.error(e.toString()));
    }
  }
}
