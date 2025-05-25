import 'package:fintech/core/presentation/widgets/custom_sized_box.dart';
import 'package:fintech/core/presentation/widgets/main_button.dart';
import 'package:fintech/features/beneficiaries/domain/models/beneficiary_model.dart';
import 'package:fintech/features/beneficiaries/presentation/widgets/add_beneficiary_dialog.dart';
import 'package:fintech/features/top_up/presentation/bloc/craete_top_up_bloc/create_top_up_cubit.dart';
import 'package:fintech/features/top_up/presentation/bloc/craete_top_up_bloc/create_top_up_state.dart';
import 'package:fintech/features/top_up/presentation/widgets/beneficiary_select_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BeneficiariesList extends StatelessWidget {
  final List<BeneficiaryModel> beneficiaries;
  final int? selectedBeneficiaryId;
  const BeneficiariesList({super.key,required this.beneficiaries, required this.selectedBeneficiaryId});

  @override
  Widget build(final BuildContext context) {
    return beneficiaries.isEmpty?
                Text('Please add beneficiaries'):
            Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Beneficiary',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            CustomSizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: beneficiaries.length,
              itemBuilder: (final context, final index) {
                          final beneficiary = beneficiaries[index];
                return BeneficiarySelectCard(
                  beneficiary: beneficiary,
                  onTap: ()=>context.read<CreateTopUpCubit>().selectBeneficiary(beneficiary),
                  isSelected: selectedBeneficiaryId==beneficiary.id,
                );
              },
            ),
          ],
        );

  }
}
