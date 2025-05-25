import 'package:fintech/features/beneficiaries/domain/models/beneficiary_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BeneficiarySelectCard extends StatelessWidget {
  final BeneficiaryModel beneficiary;
  final bool isSelected;
  final VoidCallback onTap;
  const BeneficiarySelectCard({required this.beneficiary, required this.isSelected, required this.onTap, super.key});

  @override
    Widget build(final BuildContext context) {
      return GestureDetector(
        onTap: onTap,
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(8.w),
            child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        beneficiary.name,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    if(isSelected)
                      Icon(
                        Icons.check,size: 24.r,
                        color: Colors.green,

                      )
                  ],
                ),

          ),
        ),
      );
    }

}
