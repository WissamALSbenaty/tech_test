import 'package:fintech/core/data/errors/core_errors.dart';
import 'package:fintech/features/auth/domain/usecases/logout_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:fintech/features/auth/domain/usecases/get_user_profile_usecase.dart';
import 'package:fintech/features/auth/domain/models/user_profile_model.dart';
import 'package:fintech/core/data/errors/custom_error.dart';


part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@singleton
class AuthBloc extends Cubit<AuthState> {
  final GetUserProfileUseCase _getUserProfileUseCase;
  final LogoutUseCase _logoutUseCase;

  AuthBloc(this._getUserProfileUseCase,this._logoutUseCase) : super(const AuthState.loading()){
    getUserProfile();
  }

  Future<void> getUserProfile() async {
    emit(const AuthState.loading());
    try {
      final user = await _getUserProfileUseCase();
      emit(AuthState.authenticated(user));
    } on CustomError catch (e) {
      emit(AuthState.error( e));
    }
    on Exception {
      emit(AuthState.error(SomethingWentWrongError()));
    }
  }

  Future<void> refreshProfile() async {
     try {
      final user = await _getUserProfileUseCase();
      print('Wiso refreshingBaalnce ${user.balance}');
      emit(AuthState.authenticated(user));

    } catch (e) {
    }
  }

  Future<void> logout()async {
    await _logoutUseCase();
    emit(const AuthState.unauthenticated());
  }
}
