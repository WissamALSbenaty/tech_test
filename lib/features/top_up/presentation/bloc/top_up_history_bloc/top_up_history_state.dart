import 'package:fintech/core/data/errors/custom_error.dart';
import 'package:fintech/features/top_up/domain/models/top_up_history_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_up_history_state.freezed.dart';

@freezed
class TopUpHistoryState with _$TopUpHistoryState {
  const factory TopUpHistoryState.loading() = _Loading;
  const factory TopUpHistoryState.loaded(final List<TopUpHistoryModel> history) =
      _Loaded;
  const factory TopUpHistoryState.error(final CustomError error) = _Error;
}
