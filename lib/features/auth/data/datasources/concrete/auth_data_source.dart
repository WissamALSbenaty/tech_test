import 'package:fintech/core/data/errors/core_errors.dart';
import 'package:fintech/core/data/local_database/databases/abstract/i_app_local_database.dart';
import 'package:fintech/core/utils/constants.dart';
import 'package:fintech/features/auth/data/datasources/abstract/i_auth_data_source.dart';
import 'package:fintech/features/auth/data/dtos/login_dto.dart';
import 'package:fintech/features/auth/data/entities/user_entity.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthDataSource)
class AuthDataSource implements IAuthDataSource {
  final IAppLocalDatabase appDatabase;

  AuthDataSource(this.appDatabase);
  
  @override
  Future<UserEntity> getUserProfile() async{
    final UserEntity? user =await appDatabase.getCurrentUser();
    if(user==null){
      throw UnAuthorizedError();
    }
    return user;
  }
  
  @override
  Future<UserEntity> login({required final LoginDto loginDto})async {
    await appDatabase.createUser(phoneNumber: loginDto.phoneNumber, isVerified: loginDto.isVerified);
    return UserEntity(phoneNumber: loginDto.phoneNumber, isVerified: loginDto.isVerified, balance:initialBalance);
  }
  
  @override
  Future<void> logout()=>appDatabase.logout();


}
