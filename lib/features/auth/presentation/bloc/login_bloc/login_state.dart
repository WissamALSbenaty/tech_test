// login_state.dart
part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default('') final String phone,
    @Default(false) final bool isVerified,
    @Default(false) final bool isSubmitting,
    final CustomError? errorMessage,
  }) = _LoginState;
}
