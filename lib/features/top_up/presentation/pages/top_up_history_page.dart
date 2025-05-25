import 'package:fintech/core/di/injection.dart';
import 'package:fintech/core/presentation/routes/app_router.dart';
import 'package:fintech/core/presentation/widgets/custom_empty_view.dart';
import 'package:fintech/features/top_up/presentation/bloc/top_up_history_bloc/top_up_history_cubit.dart';
import 'package:fintech/features/top_up/presentation/bloc/top_up_history_bloc/top_up_history_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:fintech/features/top_up/presentation/widgets/top_up_history_item.dart';


class TopUpHistoryPage extends StatelessWidget {
  const TopUpHistoryPage({super.key});

  @override
  Widget build(final BuildContext context) {
    return BlocProvider.value(
      value: getIt<TopUpHistoryCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Top Up History'),
          actions: [
            BlocBuilder<TopUpHistoryCubit,TopUpHistoryState>(
              builder: (ctx,state) {
                return IconButton(onPressed: ()=>getAppRouter.push(
                  CreateTopUpRoute()
                ).then((_)=>ctx.read<TopUpHistoryCubit>().loadTopUpHistory())
                  , icon:Icon( Icons.add),);
              }
            )
          ],
        ),
        body: BlocBuilder<TopUpHistoryCubit, TopUpHistoryState>(
          builder: (final context, final state) {
            return state.map(
              loading: (final state) => const Center(child: CircularProgressIndicator()),
              loaded: (final state) =>
              state.history.isEmpty?Center(child: Text(
                'No Top ups'
              ),):
                  ListView.builder(
                itemCount: state.history.length,
                itemBuilder: (final context, final index) {
                  return TopUpHistoryItem(
                    history: state.history[index],
                  );
                },
              ),
              error: (final state) =>CustomEmptyView(errorMessage: state.error.errorMessage,
                  helperButton: (
                      'Retry',
                      false,
                      context.read<TopUpHistoryCubit>().loadTopUpHistory
                  ))
            );
          },
        ),
      ),
    );
  }
}