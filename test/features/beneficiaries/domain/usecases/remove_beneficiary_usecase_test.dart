/*
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:fintech/features/beneficiaries/domain/repositories/ibeneficiaries_repository.dart';
import 'package:fintech/features/beneficiaries/domain/usecases/remove_beneficiary_usecase.dart';

class MockIBeneficiariesRepository extends Mock
    implements IBeneficiariesRepository {}

void main() {
  late RemoveBeneficiaryUseCase useCase;
  late MockIBeneficiariesRepository mockRepository;

  setUp(() {
    mockRepository = MockIBeneficiariesRepository();
    useCase = RemoveBeneficiaryUseCase(mockRepository);
  });

  const tId = '123';

  test(
    'should remove beneficiary through the repository',
    () async {
      // arrange
      when(() => mockRepository.removeBeneficiary(tId))
          .thenAnswer((_) async => {});

      // act
      await useCase(tId);

      // assert
      verify(() => mockRepository.removeBeneficiary(tId)).called(1);
    },
  );

  test(
    'should throw exception when id is empty',
    () async {
      // act & assert
      expect(() => useCase(''), throwsException);
      verifyNever(() => mockRepository.removeBeneficiary(any()));
    },
  );
}
*/
