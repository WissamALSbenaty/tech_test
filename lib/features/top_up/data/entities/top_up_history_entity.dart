import 'package:fintech/core/data/local_database/databases/concrete/app_local_database.dart';
import 'package:fintech/features/beneficiaries/data/entities/beneficiary_entity.dart';

class TopUpHistoryEntity {
  final BeneficiaryEntity beneficiary;
  final DateTime createdAt;
  final int amount;

  const TopUpHistoryEntity({
    required this.beneficiary,
    required this.createdAt,
    required this.amount,
  });

  factory TopUpHistoryEntity.fromLocalData({
    required final TopUpHistory topUp,
    required final Beneficiary beneficiary,
  }) {
    return TopUpHistoryEntity(
      beneficiary: BeneficiaryEntity.fromLocalBeneficiary(beneficiary),
      createdAt: topUp.creationTime,
      amount: topUp.amount,
    );
  }
}
