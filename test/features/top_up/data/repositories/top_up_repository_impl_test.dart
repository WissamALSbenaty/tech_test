import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:fintech/features/top_up/data/datasources/top_up_data_source.dart';
import 'package:fintech/features/top_up/data/entities/top_up_option_entity.dart';
import 'package:fintech/features/top_up/domain/repositories/concrete/top_up_repository_impl.dart';
import 'package:fintech/features/top_up/domain/models/top_up_option.dart';

@GenerateMocks([TopUpDataSource])
void main() {
  late TopUpRepositoryImpl repository;
  late MockTopUpDataSource mockDataSource;

  setUp(() {
    mockDataSource = MockTopUpDataSource();
    repository = TopUpRepositoryImpl(mockDataSource);
  });

  final tEntities = [
    const TopUpOptionEntity(amount: 5),
    const TopUpOptionEntity(amount: 10),
    const TopUpOptionEntity(amount: 20),
    const TopUpOptionEntity(amount: 30),
    const TopUpOptionEntity(amount: 50),
    const TopUpOptionEntity(amount: 75),
    const TopUpOptionEntity(amount: 100),
  ];

  final tOptions = [
    const TopUpOption(amount: 5),
    const TopUpOption(amount: 10),
    const TopUpOption(amount: 20),
    const TopUpOption(amount: 30),
    const TopUpOption(amount: 50),
    const TopUpOption(amount: 75),
    const TopUpOption(amount: 100),
  ];

  group('getTopUpOptions', () {
    test(
      'should return top-up options when data source call is successful',
      () async {
        // arrange
        when(mockDataSource.getTopUpOptions())
            .thenAnswer((_) async => tEntities);

        // act
        final result = await repository.getTopUpOptions();

        // assert
        expect(result, equals(tOptions));
        verify(mockDataSource.getTopUpOptions());
        verifyNoMoreInteractions(mockDataSource);
      },
    );

    test(
      'should throw exception when data source call is unsuccessful',
      () async {
        // arrange
        when(mockDataSource.getTopUpOptions())
            .thenThrow(Exception('Failed to get top-up options'));

        // act & assert
        expect(
          () => repository.getTopUpOptions(),
          throwsException,
        );
        verify(mockDataSource.getTopUpOptions());
        verifyNoMoreInteractions(mockDataSource);
      },
    );
  });

  group('executeTopUp', () {
    const tBeneficiaryId = '1';
    const tAmount = 50.0;

    test(
      'should execute top-up when data source call is successful',
      () async {
        // arrange
        when(mockDataSource.executeTopUp(
          beneficiaryId: tBeneficiaryId,
          amount: tAmount,
        )).thenAnswer((_) async => {});

        // act
        await repository.executeTopUp(
          beneficiaryId: tBeneficiaryId,
          amount: tAmount,
        );

        // assert
        verify(mockDataSource.executeTopUp(
          beneficiaryId: tBeneficiaryId,
          amount: tAmount,
        ));
        verifyNoMoreInteractions(mockDataSource);
      },
    );

    test(
      'should throw exception when data source call is unsuccessful',
      () async {
        // arrange
        when(mockDataSource.executeTopUp(
          beneficiaryId: tBeneficiaryId,
          amount: tAmount,
        )).thenThrow(Exception('Failed to execute top-up'));

        // act & assert
        expect(
          () => repository.executeTopUp(
            beneficiaryId: tBeneficiaryId,
            amount: tAmount,
          ),
          throwsException,
        );
        verify(mockDataSource.executeTopUp(
          beneficiaryId: tBeneficiaryId,
          amount: tAmount,
        ));
        verifyNoMoreInteractions(mockDataSource);
      },
    );
  });
}
