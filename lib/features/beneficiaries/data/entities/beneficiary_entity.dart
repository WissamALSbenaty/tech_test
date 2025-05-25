

import 'package:fintech/core/data/local_database/databases/concrete/app_local_database.dart';

class BeneficiaryEntity {
  final int id;
  final String nickname;
  const BeneficiaryEntity(
      {required this.nickname,
        required this.id
      });

  factory BeneficiaryEntity.fromLocalBeneficiary(final Beneficiary beneficiary) => BeneficiaryEntity(
    id: beneficiary.id,
    nickname: beneficiary.nickname,
  );

  Beneficiary toLocalBeneficiary()=>Beneficiary(
    nickname: nickname, id: id
  );



}
