import 'package:auto_route/auto_route.dart';
import 'package:fintech/core/data/errors/core_errors.dart';
import 'package:fintech/core/presentation/widgets/custom_empty_view.dart';
import 'package:fintech/features/auth/presentation/bloc/auth_bloc/auth_cubit.dart';
import 'package:fintech/features/auth/presentation/templetes/login_templete.dart';
import 'package:fintech/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (final context, final state) {
          return state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            authenticated: (final user) => HomePage(),
            unauthenticated: () => const LoginTemplate(),
            error: (final error) =>
                error is UnAuthorizedError?LoginTemplate():
                CustomEmptyView(
                errorMessage: error.errorMessage,
                helperButton: (
                   'Retry',
                    false,
                    context.read<AuthBloc>().getUserProfile,
                ),
            ),
          );
        },
      ),
    );
  }
}
