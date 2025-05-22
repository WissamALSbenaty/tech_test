import 'package:flutter/material.dart';
import 'package:fintech/features/beneficiaries/domain/models/beneficiary_model.dart';

class BeneficiaryListItem extends StatelessWidget {
  final BeneficiaryModel beneficiary;
  final VoidCallback onDelete;

  const BeneficiaryListItem({
    super.key,
    required this.beneficiary,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        title: Text(beneficiary.name),
        subtitle: Text(beneficiary.phoneNumber),
        trailing: IconButton(
          icon: const Icon(Icons.delete, color: Colors.red),
          onPressed: onDelete,
        ),
      ),
    );
  }
}
