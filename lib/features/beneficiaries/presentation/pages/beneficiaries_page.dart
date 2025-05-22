import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fintech/features/beneficiaries/domain/models/beneficiary_model.dart';
import 'package:fintech/features/beneficiaries/presentation/bloc/beneficiaries_bloc.dart';
import 'package:fintech/features/beneficiaries/presentation/bloc/beneficiaries_event.dart';
import 'package:fintech/features/beneficiaries/presentation/bloc/beneficiaries_state.dart';
import 'package:fintech/features/beneficiaries/presentation/widgets/beneficiary_list_item.dart';
import 'package:fintech/features/beneficiaries/presentation/widgets/add_beneficiary_dialog.dart';

@RoutePage()
class BeneficiariesPage extends StatelessWidget {
  const BeneficiariesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BeneficiariesBloc(
        getBeneficiariesUseCase: context.read(),
        addBeneficiaryUseCase: context.read(),
        removeBeneficiaryUseCase: context.read(),
      )..add(const BeneficiariesEvent.loadBeneficiaries()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Beneficiaries'),
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const AddBeneficiaryDialog(),
                );
              },
            ),
          ],
        ),
        body: BlocBuilder<BeneficiariesBloc, BeneficiariesState>(
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (beneficiaries) => beneficiaries.isEmpty
                  ? const Center(child: Text('No beneficiaries added yet'))
                  : ListView.builder(
                      itemCount: beneficiaries.length,
                      itemBuilder: (context, index) {
                        final beneficiary = beneficiaries[index];
                        return BeneficiaryListItem(
                          beneficiary: beneficiary,
                          onDelete: () {
                            context.read<BeneficiariesBloc>().add(
                                  BeneficiariesEvent.removeBeneficiary(
                                    beneficiary.id,
                                  ),
                                );
                          },
                        );
                      },
                    ),
              error: (message) => Center(child: Text(message)),
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }
}

class _BeneficiaryCard extends StatelessWidget {
  final BeneficiaryModel beneficiary;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const _BeneficiaryCard({
    required this.beneficiary,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  beneficiary.nickname,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: onEdit,
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: onDelete,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Text(
              beneficiary.phoneNumber,
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              'Monthly Limit: AED ${beneficiary.monthlyTopUpLimit.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              'Current Month: AED ${beneficiary.currentMonthTopUp.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
