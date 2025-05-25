import 'package:fintech/core/presentation/widgets/custom_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fintech/features/auth/presentation/bloc/auth_bloc/auth_cubit.dart';
class BalanceCard extends StatelessWidget {

  const BalanceCard({super.key});

  @override
  Widget build(final BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (final context, final state) {
        print('Wios building card balance ${state}');
      return state.maybeWhen(
        orElse: ()=>Container(),
        authenticated: (final user)=>  Card(
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Available Balance',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                CustomSizedBox(height: 8),
                 Text(
                         'AED ${user.balance.toStringAsFixed(2)}' ,
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
              ],
            ),
          ),
    ));
      });
  }
}
