import 'package:fintech/core/data/errors/core_errors.dart';
import 'package:fintech/core/data/errors/custom_error.dart';
import 'package:fintech/core/presentation/snake_bars/snake_bar_shower.dart';
import 'package:fintech/core/utils/enums.dart';
import 'package:fintech/features/auth/domain/usecases/login_usecase.dart';
import 'package:fintech/features/auth/presentation/bloc/auth_bloc/auth_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

@lazySingleton
class LoginCubit extends Cubit<LoginState> {

  final LoginUseCase _loginUseCase;
  final AuthBloc authBloc;
  final SnakeBarShower snakeBarShower;

  LoginCubit(
      this._loginUseCase,
    this.authBloc,
    this.snakeBarShower,
  ) : super(const LoginState());

  void updatePhone(final String phone) {
    emit(state.copyWith(phone: phone));
  }

  void toggleVerified() {
    emit(state.copyWith(isVerified: !state.isVerified));
  }

  Future<void> login() async{
    try {
      await _loginUseCase(phoneNumber: state.phone, isVerified: state.isVerified);
      await authBloc.refreshProfile();
    } on CustomError catch (e) {
      snakeBarShower.showSnakeBar(e.errorMessage, ToastType.error);
    }
    on Exception {
      snakeBarShower.showSnakeBar(SomethingWentWrongError().errorMessage, ToastType.error);
    }
  }
}
