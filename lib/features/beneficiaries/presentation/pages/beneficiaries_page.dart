import 'package:fintech/core/di/injection.dart';
import 'package:fintech/core/presentation/widgets/custom_empty_view.dart';
import 'package:fintech/features/beneficiaries/presentation/bloc/beneficiaries_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fintech/features/beneficiaries/presentation/bloc/beneficiaries_state.dart';
import 'package:fintech/features/beneficiaries/presentation/widgets/beneficiary_list_item.dart';
import 'package:fintech/features/beneficiaries/presentation/widgets/add_beneficiary_dialog.dart';

class BeneficiariesPage extends StatelessWidget {
  const BeneficiariesPage({super.key});

  @override
  Widget build(final BuildContext context) {
    return BlocProvider.value(
      value:getIt<BeneficiariesCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Beneficiaries'),
          actions: [
            BlocBuilder<BeneficiariesCubit,BeneficiariesState>(
              builder: (context,state) {
                return IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (final ctx) => AddBeneficiaryDialog(
                        onAddBeneficiary: (name)=>context.read<BeneficiariesCubit>().addBeneficiary(name: name),
                      ),
                    );
                  },
                );
              }
            ),
          ],
        ),
        body: BlocBuilder<BeneficiariesCubit, BeneficiariesState>(
          builder: (final context, final state) {
            return state.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (final beneficiaries) => beneficiaries.isEmpty
                  ? const Center(child: Text('No beneficiaries added yet'))
                  : ListView.builder(
                      itemCount: beneficiaries.length,
                      itemBuilder: (final context, final index) {
                        final beneficiary = beneficiaries[index];
                        return BeneficiaryListItem(
                          beneficiary: beneficiary,
                          onDelete: () {
                            context.read<BeneficiariesCubit>().removeBeneficiary(
                                    beneficiary.id,

                                );
                          },
                        );
                      },
                    ),
              error: (final error) =>
            CustomEmptyView(errorMessage: error.errorMessage,
                helperButton: (
                'Retry',false,
                context.read<BeneficiariesCubit>().loadBeneficiaries
                )),
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }
}


