/*
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:fintech/features/beneficiaries/domain/models/beneficiary_model.dart';
import 'package:fintech/features/beneficiaries/domain/repositories/ibeneficiaries_repository.dart';
import 'package:fintech/features/beneficiaries/domain/usecases/get_beneficiaries_usecase.dart';

class MockIBeneficiariesRepository extends Mock
    implements IBeneficiariesRepository {}

void main() {
  late GetBeneficiariesUseCase useCase;
  late MockIBeneficiariesRepository mockRepository;

  setUp(() {
    mockRepository = MockIBeneficiariesRepository();
    useCase = GetBeneficiariesUseCase(mockRepository);
  });

  final tBeneficiaries = [
    const BeneficiaryModel(
      id: '1',
      name: 'John Doe',
      phoneNumber: '+971501234567',
    ),
    const BeneficiaryModel(
      id: '2',
      name: 'Jane Smith',
      phoneNumber: '+971502345678',
    ),
  ];

  test(
    'should get beneficiaries from the repository',
    () async {
      // arrange
      when(() => mockRepository.getBeneficiaries())
          .thenAnswer((_) async => tBeneficiaries);

      // act
      final result = await useCase();

      // assert
      expect(result, equals(tBeneficiaries));
      verify(() => mockRepository.getBeneficiaries()).called(1);
    },
  );
}
*/
