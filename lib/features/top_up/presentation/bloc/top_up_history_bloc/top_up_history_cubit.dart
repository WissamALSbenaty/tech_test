import 'package:fintech/core/data/errors/core_errors.dart';
import 'package:fintech/core/data/errors/custom_error.dart';
import 'package:fintech/features/top_up/domain/usecases/get_top_up_history_usercase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:fintech/features/top_up/presentation/bloc/top_up_history_bloc/top_up_history_state.dart';

@injectable
class TopUpHistoryCubit extends Cubit<TopUpHistoryState> {
  final GetTopUpHistoryUseCase _getTopUpHistoryUseCase;

  TopUpHistoryCubit(this._getTopUpHistoryUseCase)
      : super(const TopUpHistoryState.loading()) {
    loadTopUpHistory();
  }

  Future<void> loadTopUpHistory() async {
    emit(const TopUpHistoryState.loading());
    try {
      final history = await _getTopUpHistoryUseCase();
      emit(TopUpHistoryState.loaded(history));
    } on CustomError catch (e) {
      emit(TopUpHistoryState.error(e));
    } on Exception {
      emit(TopUpHistoryState.error(SomethingWentWrongError()));
    }
  }
}
