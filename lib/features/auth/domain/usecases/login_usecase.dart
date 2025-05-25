import 'package:fintech/features/auth/domain/repositories/abstract/i_auth_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LoginUseCase {
  final IAuthRepository _authRepository;

  LoginUseCase(this._authRepository);

  Future<void> call({required final String phoneNumber,required final bool isVerified}) async {
    await _authRepository.login(phoneNumber:phoneNumber,isVerified: isVerified);
  }
}
