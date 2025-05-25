import 'package:fintech/features/auth/data/entities/user_entity.dart';
import 'package:fintech/features/beneficiaries/data/entities/beneficiary_entity.dart';
import 'package:fintech/features/top_up/data/entities/top_up_history_entity.dart';

abstract class IAppLocalDatabase {
  void close();
  Future<UserEntity?> getCurrentUser();

  Future<void> createUser({required final String phoneNumber,required final bool isVerified});
  Future<void> updateUserBalance({required final int newBalance});
  Future<void> logout();

  Future<void> createBeneficiary({required final String name});
  Future<List<BeneficiaryEntity>> getBeneficiaries();
  Future<void> deleteBeneficiary({required final int id});

  Future<void> createTopUp({required final int beneficiaryId,required final int amount});
  Future<List<TopUpHistoryEntity>> getTopUpHistories();
}
