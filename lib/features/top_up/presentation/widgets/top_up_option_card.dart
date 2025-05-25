import 'package:fintech/features/top_up/presentation/bloc/craete_top_up_bloc/create_top_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class TopUpOptionCard extends StatelessWidget {
  final int amount;
  final bool isSelected;
  const TopUpOptionCard({
    required this.amount, required this.isSelected, super.key,
  });

  @override
  Widget build(final BuildContext context) {
    return InkWell(
      onTap: () {
              context.read<CreateTopUpCubit>().selectTopUpOption(amount);
      },
      child: Container(
        decoration: BoxDecoration(
          border:Border.all(color: isSelected?Colors.green:Colors.grey,
              width: isSelected?2:1,
          ),
          borderRadius: BorderRadius.circular( 12.r),
        ),
        padding: EdgeInsets.all(8.r),
        child:Text(
              'AED ${amount.toStringAsFixed(2)}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
    ));
  }
}
