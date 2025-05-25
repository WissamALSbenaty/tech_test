/*
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:fintech/features/beneficiaries/domain/repositories/ibeneficiaries_repository.dart';
import 'package:fintech/features/beneficiaries/domain/usecases/add_beneficiary_usecase.dart';

class MockIBeneficiariesRepository extends Mock
    implements IBeneficiariesRepository {}

void main() {
  late AddBeneficiaryUseCase useCase;
  late MockIBeneficiariesRepository mockRepository;

  setUp(() {
    mockRepository = MockIBeneficiariesRepository();
    useCase = AddBeneficiaryUseCase(mockRepository);
  });

  const tName = 'John Doe';
  const tPhoneNumber = '+971501234567';

  test(
    'should add beneficiary through the repository',
    () async {
      // arrange
      when(() => mockRepository.addBeneficiary(
            name: tName,
            phoneNumber: tPhoneNumber,
          )).thenAnswer((_) async => {});

      // act
      await useCase(
        name: tName,
        phoneNumber: tPhoneNumber,
      );

      // assert
      verify(() => mockRepository.addBeneficiary(
            name: tName,
            phoneNumber: tPhoneNumber,
          )).called(1);
    },
  );

  test(
    'should throw exception when name is empty',
    () async {
      // act & assert
      expect(
        () => useCase(
          name: '',
          phoneNumber: tPhoneNumber,
        ),
        throwsException,
      );
      verifyNever(() => mockRepository.addBeneficiary(
            name: any(named: 'name'),
            phoneNumber: any(named: 'phoneNumber'),
          ));
    },
  );

  test(
    'should throw exception when phone number is empty',
    () async {
      // act & assert
      expect(
        () => useCase(
          name: tName,
          phoneNumber: '',
        ),
        throwsException,
      );
      verifyNever(() => mockRepository.addBeneficiary(
            name: any(named: 'name'),
            phoneNumber: any(named: 'phoneNumber'),
          ));
    },
  );
}
*/
