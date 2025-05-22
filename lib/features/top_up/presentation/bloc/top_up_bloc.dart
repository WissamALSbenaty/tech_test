import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:fintech/features/top_up/domain/models/top_up_option_model.dart';
import 'package:fintech/features/beneficiaries/domain/models/beneficiary_model.dart';
import 'package:fintech/features/top_up/domain/usecases/get_top_up_options.dart';
import 'package:fintech/features/top_up/domain/usecases/execute_top_up.dart';
import 'top_up_event.dart';
import 'top_up_state.dart';

@injectable
class TopUpBloc extends Bloc<TopUpEvent, TopUpState> {
  final GetTopUpOptionsUseCase _getTopUpOptionsUseCase;
  final ExecuteTopUpUseCase _executeTopUpUseCase;

  TopUpBloc(
    this._getTopUpOptionsUseCase,
    this._executeTopUpUseCase,
  ) : super(const TopUpState.initial()) {
    on<TopUpEvent>(_onEvent);
  }

  Future<void> _onEvent(TopUpEvent event, Emitter<TopUpState> emit) async {
    await event.map(
      loadInitialData: (e) => _onLoadInitialData(e, emit),
      selectTopUpOption: (e) => _onSelectTopUpOption(e, emit),
      selectBeneficiary: (e) => _onSelectBeneficiary(e, emit),
      executeTopUp: (e) => _onExecuteTopUp(e, emit),
    );
  }

  Future<void> _onLoadInitialData(
    _LoadInitialData event,
    Emitter<TopUpState> emit,
  ) async {
    try {
      emit(const TopUpState.loading());

      final topUpOptions = await _getTopUpOptionsUseCase();

      emit(TopUpState.loaded(
        options: topUpOptions,
        beneficiaries: [], // TODO: Load from repository
      ));
    } catch (e) {
      emit(TopUpState.error(e.toString()));
    }
  }

  void _onSelectTopUpOption(
    _SelectTopUpOption event,
    Emitter<TopUpState> emit,
  ) {
    state.maybeWhen(
      loaded: (options, beneficiaries, _, __) {
        final updatedOptions = options.map((option) {
          return option.copyWith(
            isSelected: option.amount == event.option.amount,
          );
        }).toList();

        emit(TopUpState.loaded(
          options: updatedOptions,
          beneficiaries: beneficiaries,
          selectedOption: event.option,
        ));
      },
      orElse: () {},
    );
  }

  void _onSelectBeneficiary(
    _SelectBeneficiary event,
    Emitter<TopUpState> emit,
  ) {
    state.maybeWhen(
      loaded: (options, beneficiaries, selectedOption, _) {
        emit(TopUpState.loaded(
          options: options,
          beneficiaries: beneficiaries,
          selectedOption: selectedOption,
          selectedBeneficiary: event.beneficiary,
        ));
      },
      orElse: () {},
    );
  }

  Future<void> _onExecuteTopUp(
    _ExecuteTopUp event,
    Emitter<TopUpState> emit,
  ) async {
    try {
      emit(const TopUpState.loading());

      await _executeTopUpUseCase(
        option: event.option,
        beneficiary: event.beneficiary,
      );

      emit(const TopUpState.success());
    } catch (e) {
      emit(TopUpState.error(e.toString()));
    }
  }
}
