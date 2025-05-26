import 'package:fintech/core/data/errors/core_errors.dart';
import 'package:fintech/features/auth/data/datasources/abstract/i_auth_data_source.dart';
import 'package:fintech/features/auth/data/dtos/login_dto.dart';
import 'package:fintech/features/auth/data/entities/user_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthDataSource extends Mock implements IAuthDataSource {}

void main() {
  late MockAuthDataSource mockDataSource;
  late UserEntity testUser;
  late LoginDto testLoginDto;

  setUp(() {
    mockDataSource = MockAuthDataSource();
    testUser = UserEntity(
      phoneNumber: '+1234567890',
      balance: 1000,
      isVerified: true
    );
    testLoginDto = LoginDto(
      phoneNumber: '+1234567890',
      isVerified: true
    );
  });

  group('login', () {
    test('should return UserEntity when login is successful', () async {
      // arrange
      when(() => mockDataSource.login(loginDto: testLoginDto))
          .thenAnswer((_) async => testUser);

      // act
      final result = await mockDataSource.login(loginDto: testLoginDto);

      // assert
      expect(result, testUser);
      verify(() => mockDataSource.login(loginDto: testLoginDto)).called(1);
    });

    test('should throw error when login fails', () async {
      // arrange
      when(() => mockDataSource.login(loginDto: testLoginDto))
          .thenThrow(UnAuthorizedError());

      // act & assert
      expect(
        () => mockDataSource.login(loginDto: testLoginDto),
        throwsA(isA<UnAuthorizedError>())
      );
    });
  });

  group('getUserProfile', () {
    test('should return UserEntity when getting profile is successful', () async {
      // arrange
      when(() => mockDataSource.getUserProfile())
          .thenAnswer((_) async => testUser);

      // act
      final result = await mockDataSource.getUserProfile();

      // assert
      expect(result, testUser);
      verify(() => mockDataSource.getUserProfile()).called(1);
    });

    test('should throw error when getting profile fails', () async {
      // arrange
      when(() => mockDataSource.getUserProfile())
          .thenThrow(UnAuthorizedError());

      // act & assert
      expect(
        () => mockDataSource.getUserProfile(),
        throwsA(isA<UnAuthorizedError>())
      );
    });
  });

  group('logout', () {
    test('should complete successfully when logout succeeds', () async {
      // arrange
      when(() => mockDataSource.logout())
          .thenAnswer((_) async => {});

      // act & assert
      expect(
        () => mockDataSource.logout(),
        returnsNormally
      );
    });

    test('should throw error when logout fails', () async {
      // arrange
      when(() => mockDataSource.logout())
          .thenThrow(UnAuthorizedError());

      // act & assert
      expect(
        () => mockDataSource.logout(),
        throwsA(isA<UnAuthorizedError>())
      );
    });
  });
}

