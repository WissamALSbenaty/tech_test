/*
import 'package:fintech/features/beneficiaries/data/datasources/abstract/i_beneficiaries_data_source.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:fintech/features/beneficiaries/domain/repositories/concrete/beneficiaries_repository_impl.dart';
import 'package:fintech/features/beneficiaries/domain/models/beneficiary_model.dart';

class MockIBeneficiariesDataSource extends Mock
    implements IBeneficiariesDataSource {}

void main() {
  late BeneficiariesRepositoryImpl repository;
  late MockIBeneficiariesDataSource mockDataSource;

  setUp(() {
    mockDataSource = MockIBeneficiariesDataSource();
    repository = BeneficiariesRepositoryImpl(mockDataSource);
  });

  final tBeneficiaries = [
    BeneficiaryModel(
      id: '1',
      name: 'John Doe',
      phoneNumber: '+971501234567',
    ),
    BeneficiaryModel(
      id: '2',
      name: 'Jane Smith',
      phoneNumber: '+971502345678',
    ),
  ];

  group('getBeneficiaries', () {
    test(
      'should return beneficiaries when data source call is successful',
      () async {
        // arrange
        when(() => mockDataSource.getBeneficiaries())
            .thenAnswer((_) async => tBeneficiaries);

        // act
        final result = await repository.getBeneficiaries();

        // assert
        expect(result, equals(tBeneficiaries));
        verify(() => mockDataSource.getBeneficiaries()).called(1);
      },
    );

    test(
      'should throw exception when data source call is unsuccessful',
      () async {
        // arrange
        when(() => mockDataSource.getBeneficiaries()).thenThrow(Exception());

        // act & assert
        expect(() => repository.getBeneficiaries(), throwsException);
        verify(() => mockDataSource.getBeneficiaries()).called(1);
      },
    );
  });

  group('addBeneficiary', () {
    const tName = 'John Doe';
    const tPhoneNumber = '+971501234567';

    test(
      'should add beneficiary when data source call is successful',
      () async {
        // arrange
        when(() => mockDataSource.addBeneficiary(
              name: tName,
              phoneNumber: tPhoneNumber,
            )).thenAnswer((_) async => {});

        // act
        await repository.addBeneficiary(
          name: tName,
          phoneNumber: tPhoneNumber,
        );

        // assert
        verify(() => mockDataSource.addBeneficiary(
              name: tName,
              phoneNumber: tPhoneNumber,
            )).called(1);
      },
    );

    test(
      'should throw exception when data source call is unsuccessful',
      () async {
        // arrange
        when(() => mockDataSource.addBeneficiary(
              name: tName,
              phoneNumber: tPhoneNumber,
            )).thenThrow(Exception());

        // act & assert
        expect(
          () => repository.addBeneficiary(
            name: tName,
            phoneNumber: tPhoneNumber,
          ),
          throwsException,
        );
        verify(() => mockDataSource.addBeneficiary(
              name: tName,
              phoneNumber: tPhoneNumber,
            )).called(1);
      },
    );
  });

  group('removeBeneficiary', () {
    const tId = '1';

    test(
      'should remove beneficiary when data source call is successful',
      () async {
        // arrange
        when(() => mockDataSource.removeBeneficiary(tId))
            .thenAnswer((_) async => {});

        // act
        await repository.removeBeneficiary(tId);

        // assert
        verify(() => mockDataSource.removeBeneficiary(tId)).called(1);
      },
    );

    test(
      'should throw exception when data source call is unsuccessful',
      () async {
        // arrange
        when(() => mockDataSource.removeBeneficiary(tId))
            .thenThrow(Exception());

        // act & assert
        expect(() => repository.removeBeneficiary(tId), throwsException);
        verify(() => mockDataSource.removeBeneficiary(tId)).called(1);
      },
    );
  });
}
*/
