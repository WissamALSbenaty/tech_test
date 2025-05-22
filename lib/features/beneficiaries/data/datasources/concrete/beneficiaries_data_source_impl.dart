import 'package:fintech/features/beneficiaries/data/datasources/abstract/i_beneficiaries_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:fintech/features/beneficiaries/data/entities/beneficiary_entity.dart';

@Injectable(as: IBeneficiariesDataSource)
class BeneficiariesDataSourceImpl implements IBeneficiariesDataSource {
  @override
  Future<List<BeneficiaryEntity>> getBeneficiaries() async {
    // Mock implementation
    await Future.delayed(const Duration(seconds: 1));
    return [
      const BeneficiaryEntity(
        id: '1',
        name: 'John Doe',
        phoneNumber: '+971501234567',
      ),
      const BeneficiaryEntity(
        id: '2',
        name: 'Jane Smith',
        phoneNumber: '+971502345678',
      ),
    ];
  }

  @override
  Future<void> addBeneficiary({
    required String name,
    required String phoneNumber,
  }) async {
    // Mock implementation
    await Future.delayed(const Duration(seconds: 1));
    if (name.isEmpty) {
      throw Exception('Name cannot be empty');
    }
    if (phoneNumber.isEmpty) {
      throw Exception('Phone number cannot be empty');
    }
  }

  @override
  Future<void> removeBeneficiary(String id) async {
    // Mock implementation
    await Future.delayed(const Duration(seconds: 1));
    if (id.isEmpty) {
      throw Exception('Beneficiary ID cannot be empty');
    }
  }
}
