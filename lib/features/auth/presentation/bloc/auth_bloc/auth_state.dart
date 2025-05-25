// auth_state.dart
part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.loading() = Loading;
  const factory AuthState.authenticated(final UserProfileModel user) = Authenticated;
  const factory AuthState.unauthenticated() = Unauthenticated;
  const factory AuthState.error(final CustomError error) = Error;
}
