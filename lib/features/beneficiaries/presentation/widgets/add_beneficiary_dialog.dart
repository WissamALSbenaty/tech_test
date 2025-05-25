import 'package:fintech/features/beneficiaries/presentation/bloc/beneficiaries_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddBeneficiaryDialog extends StatefulWidget {
  final void Function(String)onAddBeneficiary;
  const AddBeneficiaryDialog({super.key, required this.onAddBeneficiary});

  @override
  State<AddBeneficiaryDialog> createState() => _AddBeneficiaryDialogState();
}

class _AddBeneficiaryDialogState extends State<AddBeneficiaryDialog> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    return AlertDialog(
      title: const Text('Add Beneficiary'),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: _nameController,
              maxLength: 20,
              decoration: const InputDecoration(
                labelText: 'Name',
                hintText: 'Enter beneficiary name',
              ),
              validator: (final value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a name';
                }
                return null;
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            if (_formKey.currentState?.validate() ?? false) {
              widget.onAddBeneficiary( _nameController.text);
              Navigator.of(context).pop();
            }
          },
          child: const Text('Add'),
        ),
      ],
    );
  }
}
