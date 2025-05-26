import 'package:fintech/core/utils/constants.dart';
import 'package:fintech/features/auth/data/entities/user_entity.dart';
import 'package:fintech/features/auth/domain/models/user_profile_model.dart';
import 'package:fintech/features/auth/domain/usecases/login_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../mocks/repositories.dart';

void main() {
  late LoginUseCase loginUseCase;
  late MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    loginUseCase = LoginUseCase( mockAuthRepository);
  });

  test('login executes successfully', () async {
    const phoneNumber = '+1234567890';

    final mockUserProfileModel = UserProfileModel(
      phoneNumber: phoneNumber,
      isVerified: true,
      balance: initialBalance,
    );
    
    when(() => mockAuthRepository.login(phoneNumber: phoneNumber, isVerified: true))
        .thenAnswer((_) async => mockUserProfileModel);

     await loginUseCase.call(phoneNumber: phoneNumber, isVerified: true);

    verify(() => mockAuthRepository.login(phoneNumber: phoneNumber, isVerified: true)).called(1);
  });

}
