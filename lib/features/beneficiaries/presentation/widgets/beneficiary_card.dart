import 'package:fintech/core/presentation/widgets/custom_sized_box.dart';
import 'package:fintech/features/beneficiaries/domain/models/beneficiary_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BeneficiaryCard extends StatelessWidget {
  final BeneficiaryModel beneficiary;
  final VoidCallback onDelete;

  const BeneficiaryCard({required this.beneficiary, required this.onDelete, super.key,
  });

  @override
  Widget build(final BuildContext context) {
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
                  beneficiary.name,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: onDelete,
                    ),
                  ],
                ),
              ],
            ),
            CustomSizedBox(height: 8),

          ],
        ),
      ),
    );
  }
}