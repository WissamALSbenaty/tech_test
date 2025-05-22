import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fintech/features/beneficiaries/domain/models/beneficiary_model.dart';
import 'package:fintech/features/top_up/domain/models/top_up_option_model.dart';
import 'package:fintech/features/top_up/presentation/bloc/top_up_bloc.dart';
import 'package:fintech/features/top_up/presentation/bloc/top_up_event.dart';
import 'package:fintech/features/top_up/presentation/bloc/top_up_state.dart';

@RoutePage()
class TopUpPage extends StatelessWidget {
  const TopUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TopUpBloc()..add(const TopUpEvent.loadInitialData()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Top Up'),
        ),
        body: BlocBuilder<TopUpBloc, TopUpState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state.errorMessage != null) {
              return Center(
                child: Text(
                  state.errorMessage!,
                  style: TextStyle(color: Colors.red),
                ),
              );
            }

            return SingleChildScrollView(
              padding: EdgeInsets.all(16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildBalanceCard(state),
                  SizedBox(height: 24.h),
                  _buildTopUpOptions(state),
                  SizedBox(height: 24.h),
                  _buildBeneficiariesList(state),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildBalanceCard(TopUpState state) {
    return Card(
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
            SizedBox(height: 8.h),
            Text(
              'AED ${state.userBalance.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopUpOptions(TopUpState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Amount',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16.h),
        Wrap(
          spacing: 8.w,
          runSpacing: 8.h,
          children: state.topUpOptions.map((option) {
            return _TopUpOptionCard(
              option: option,
              onTap: () {
                context.read<TopUpBloc>().add(
                      TopUpEvent.selectTopUpOption(option),
                    );
              },
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildBeneficiariesList(TopUpState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Beneficiary',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16.h),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: state.beneficiaries.length,
          itemBuilder: (context, index) {
            final beneficiary = state.beneficiaries[index];
            return _BeneficiaryCard(
              beneficiary: beneficiary,
              onTap: () {
                context.read<TopUpBloc>().add(
                      TopUpEvent.selectBeneficiary(beneficiary),
                    );
              },
            );
          },
        ),
      ],
    );
  }
}

class _TopUpOptionCard extends StatelessWidget {
  final TopUpOptionModel option;
  final VoidCallback onTap;

  const _TopUpOptionCard({
    required this.option,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 100.w,
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          border: Border.all(
            color: option.isSelected ? Colors.blue : Colors.grey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Column(
          children: [
            Text(
              'AED ${option.amount.toStringAsFixed(0)}',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: option.isSelected ? Colors.blue : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BeneficiaryCard extends StatelessWidget {
  final BeneficiaryModel beneficiary;
  final VoidCallback onTap;

  const _BeneficiaryCard({
    required this.beneficiary,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onTap,
        title: Text(beneficiary.name),
        subtitle: Text(beneficiary.phoneNumber),
        trailing: Text(
          'AED ${beneficiary.currentMonthTopUp.toStringAsFixed(2)} / ${beneficiary.monthlyTopUpLimit.toStringAsFixed(2)}',
        ),
      ),
    );
  }
}
