import 'package:fintech/features/beneficiaries/data/dtos/beneficiary_dto.dart';
import 'package:fintech/features/beneficiaries/domain/repositories/abstract/i_beneficiaries_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:fintech/features/beneficiaries/data/datasources/abstract/i_beneficiaries_data_source.dart';
import 'package:fintech/features/beneficiaries/domain/models/beneficiary_model.dart';

@LazySingleton(as: IBeneficiariesRepository)
class BeneficiariesRepository implements IBeneficiariesRepository {
  final IBeneficiariesDataSource _dataSource;

  BeneficiariesRepository(this._dataSource);

  @override
  Future<List<BeneficiaryModel>> getBeneficiaries() async =>
      (await _dataSource.getBeneficiaries()).map(BeneficiaryModel.fromEntity).toList();

  @override
  Future<void> addBeneficiary({
    required final String name,
  }) =>_dataSource.addBeneficiary(beneficiaryDto:BeneficiaryDto(nickname: name));

  @override
  Future<void> removeBeneficiary(final int id)=>_dataSource.removeBeneficiary(id);
}
