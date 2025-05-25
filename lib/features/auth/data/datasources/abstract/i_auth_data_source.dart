import 'package:fintech/features/auth/data/dtos/login_dto.dart';
import 'package:fintech/features/auth/data/entities/user_entity.dart';

abstract class IAuthDataSource {
  Future<UserEntity> login({required final LoginDto loginDto});
  Future<UserEntity> getUserProfile();
  Future<void> logout();
}
