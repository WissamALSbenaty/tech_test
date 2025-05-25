import 'package:fintech/core/presentation/widgets/custom_sized_box.dart';
import 'package:fintech/core/utils/constants.dart';
import 'package:fintech/features/top_up/presentation/bloc/craete_top_up_bloc/create_top_up_cubit.dart';
import 'package:fintech/features/top_up/presentation/bloc/craete_top_up_bloc/create_top_up_state.dart';
import 'package:fintech/features/top_up/presentation/widgets/top_up_option_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopUpOptionsSelector extends StatelessWidget {
  
  const TopUpOptionsSelector({super.key});

  @override
  Widget build(final BuildContext context) {
    return BlocBuilder<CreateTopUpCubit,CreateTopUpState>(
      builder: (final context,final state)=>
          state.maybeMap(orElse: ()=>Container(),
        loaded: (final state)=> Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Amount',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            CustomSizedBox(height: 16),
            Wrap(
              spacing: 8.w,
              runSpacing: 8.h,
              children: topUpOptions.map((final option)=>TopUpOptionCard(
                  amount: option, isSelected: state.selectedTopUpAmount==option,

              )).toList(),
            ),
          ],
    ))
    );
  
  }
}