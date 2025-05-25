
import 'package:fintech/features/top_up/data/entities/top_up_history_entity.dart';
import 'package:fintech/features/beneficiaries/domain/models/beneficiary_model.dart';

class TopUpHistoryModel {
  final BeneficiaryModel beneficiary;
  final DateTime createdAt;
  final int amount;

  const TopUpHistoryModel({
    required this.beneficiary,
    required this.createdAt,
    required this.amount,
  });

  factory TopUpHistoryModel.fromEntity(final TopUpHistoryEntity entity) {
    return TopUpHistoryModel(
      beneficiary: BeneficiaryModel.fromEntity(entity.beneficiary),
      createdAt: entity.createdAt,
      amount: entity.amount,
    );
  }
}
