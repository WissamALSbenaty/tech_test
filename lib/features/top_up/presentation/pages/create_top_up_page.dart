import 'package:fintech/core/di/injection.dart';
import 'package:fintech/core/presentation/widgets/custom_empty_view.dart';
import 'package:fintech/core/presentation/widgets/custom_sized_box.dart';
import 'package:fintech/core/presentation/widgets/main_button.dart';
import 'package:fintech/features/top_up/presentation/bloc/craete_top_up_bloc/create_top_up_cubit.dart';
import 'package:fintech/features/top_up/presentation/bloc/craete_top_up_bloc/create_top_up_state.dart';
import 'package:fintech/features/top_up/presentation/widgets/balance_card.dart';
import 'package:fintech/features/top_up/presentation/widgets/beneficiaries_list.dart';
import 'package:fintech/features/top_up/presentation/widgets/top_up_options_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class CreateTopUpPage extends StatelessWidget {
  const CreateTopUpPage({super.key});

  @override
  Widget build(final BuildContext context) {
    return BlocProvider.value(
      value:getIt<CreateTopUpCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Top Up'),
        ),
        body: BlocBuilder<CreateTopUpCubit, CreateTopUpState>(
          builder: (final context, final state) {
            return state.map(
              loading: (final state) => const Center(child: CircularProgressIndicator()),
              error: (final state) => CustomEmptyView(
                errorMessage: state.error.errorMessage,
                 helperButton:(
                   'Retry',
                   state is Loading,
                   context.read<CreateTopUpCubit>().loadInitialData
                 )
              ),
              loaded: (final state) {
                print('Wiso new state ${state.selectedTopUpAmount}');
                  return SingleChildScrollView(
              padding: EdgeInsets.all(16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BalanceCard(),
                  CustomSizedBox(height: 24),
                  TopUpOptionsSelector(),
                  CustomSizedBox(height: 24),
                  BeneficiariesList(
                    selectedBeneficiaryId: state.selectedBeneficiaryId,
                    beneficiaries: state.beneficiaries,
                  ),
                  CustomSizedBox(height: 64,),
                  MainButton(title: 'Create', onPressed:
                  context.read<CreateTopUpCubit>().executeCreateTopUp)
                ],
              ),
            );
              });
          },
        ),
      ),
    );
  }




}

