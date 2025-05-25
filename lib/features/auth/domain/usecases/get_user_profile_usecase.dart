import 'package:fintech/features/auth/domain/repositories/abstract/i_auth_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:fintech/features/auth/domain/models/user_profile_model.dart';

@singleton
class GetUserProfileUseCase {
  final IAuthRepository _authRepository;

  GetUserProfileUseCase(this._authRepository);

  Future<UserProfileModel> call() async {
    return await _authRepository.getUserProfile();
  }
}
