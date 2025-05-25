

import 'package:flutter/material.dart';
import 'package:fintech/features/beneficiaries/domain/models/beneficiary_model.dart';

class BeneficiaryTile extends StatelessWidget {
  final BeneficiaryModel beneficiary;
  final bool isSelected;
  final VoidCallback onTap;
  const BeneficiaryTile({required this.beneficiary, required this.isSelected, required this.onTap, super.key});

  @override
  Widget build(final BuildContext context) {
    return ListTile(
      title: Text(beneficiary.name),
      trailing: isSelected == true ? const Icon(Icons.check_circle) : null,
      onTap: onTap,
    );
  }
}
