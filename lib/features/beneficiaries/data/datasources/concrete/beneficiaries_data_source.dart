import 'package:fintech/core/data/local_database/databases/abstract/i_app_local_database.dart';
import 'package:fintech/features/beneficiaries/data/datasources/abstract/i_beneficiaries_data_source.dart';
import 'package:fintech/features/beneficiaries/data/dtos/beneficiary_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:fintech/features/beneficiaries/data/entities/beneficiary_entity.dart';

@LazySingleton(as: IBeneficiariesDataSource)
class BeneficiariesDataSource implements IBeneficiariesDataSource {
  final IAppLocalDatabase appLocalDatabase;

  BeneficiariesDataSource(this.appLocalDatabase);

  @override
  Future<void> addBeneficiary({required final BeneficiaryDto beneficiaryDto})=>appLocalDatabase.createBeneficiary(
      name: beneficiaryDto.nickname);

  @override
  Future<List<BeneficiaryEntity>> getBeneficiaries()=>appLocalDatabase.getBeneficiaries();

  @override
  Future<void> removeBeneficiary(final int id)=>appLocalDatabase.deleteBeneficiary(id: id);

}
