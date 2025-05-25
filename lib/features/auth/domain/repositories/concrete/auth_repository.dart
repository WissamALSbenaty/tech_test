import 'package:fintech/features/auth/data/datasources/abstract/i_auth_data_source.dart';
import 'package:fintech/features/auth/data/dtos/login_dto.dart';
import 'package:fintech/features/auth/domain/repositories/abstract/i_auth_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:fintech/features/auth/domain/models/user_profile_model.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final IAuthDataSource _remoteDataSource;

  AuthRepository(this._remoteDataSource);

  @override
  Future<UserProfileModel> getUserProfile() async{
    return UserProfileModel.fromEntity(await  _remoteDataSource.getUserProfile());
  }

  @override
  Future<void> logout() {
    return _remoteDataSource.logout();
  }
  
  @override
  Future<UserProfileModel> login({required final String phoneNumber, required final bool isVerified})async=>
   UserProfileModel.fromEntity(await  _remoteDataSource.login(loginDto:
  LoginDto( phoneNumber: phoneNumber, isVerified: isVerified)));
}
