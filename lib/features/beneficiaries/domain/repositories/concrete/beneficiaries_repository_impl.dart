import 'package:fintech/features/beneficiaries/domain/repositories/abstract/i_beneficiaries_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:fintech/features/beneficiaries/data/datasources/abstract/i_beneficiaries_data_source.dart';
import 'package:fintech/features/beneficiaries/domain/models/beneficiary_model.dart';

@Injectable(as: IBeneficiariesRepository)
class BeneficiariesRepositoryImpl implements IBeneficiariesRepository {
  final IBeneficiariesDataSource _dataSource;

  BeneficiariesRepositoryImpl(this._dataSource);

  @override
  Future<List<BeneficiaryModel>> getBeneficiaries() async {
    try {
      final entities = await _dataSource.getBeneficiaries();
      return entities.map((entity) => BeneficiaryModel.fromEntity(entity)).toList();
    } catch (e) {
      throw Exception('Failed to get beneficiaries');
    }
  }

  @override
  Future<void> addBeneficiary({
    required String name,
    required String phoneNumber,
  }) async {
    try {
      await _dataSource.addBeneficiary(
        name: name,
        phoneNumber: phoneNumber,
      );
    } catch (e) {
      throw Exception('Failed to add beneficiary');
    }
  }

  @override
  Future<void> removeBeneficiary(String id) async {
    try {
      await _dataSource.removeBeneficiary(id);
    } catch (e) {
      throw Exception('Failed to remove beneficiary');
    }
  }
}
