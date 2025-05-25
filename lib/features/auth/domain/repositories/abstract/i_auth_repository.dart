import 'package:fintech/features/auth/domain/models/user_profile_model.dart';

abstract class IAuthRepository {
  Future<UserProfileModel> getUserProfile();
  Future<UserProfileModel> login(
      {required final String phoneNumber, required final bool isVerified});
  Future<void> logout();
}
