import 'package:fintech/features/auth/domain/repositories/abstract/i_auth_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LogoutUseCase {
  final IAuthRepository _authRepository;

  LogoutUseCase(this._authRepository);

  Future<void> call() async {
    await _authRepository.logout();
  }
}
