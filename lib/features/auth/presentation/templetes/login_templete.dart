import 'package:fintech/core/di/injection.dart';
import 'package:fintech/core/presentation/widgets/custom_sized_box.dart';
import 'package:fintech/features/auth/presentation/bloc/login_bloc/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fintech/core/presentation/widgets/main_button.dart';

class LoginTemplate extends StatefulWidget {
  const LoginTemplate({super.key});

  @override
  State<LoginTemplate> createState() => _LoginTemplateState();
}

class _LoginTemplateState extends State<LoginTemplate> {
  final LoginCubit _loginCubit = getIt<LoginCubit>();
  late final TextEditingController _phoneController = TextEditingController()..addListener(
      ()=>_loginCubit.updatePhone(_phoneController.text));

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: BlocBuilder<LoginCubit, LoginState>(
          bloc: _loginCubit,
          builder: (final context, final state)=>Column(
                crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Phone Number', style: theme.textTheme.titleMedium),
            const CustomSizedBox(height: 8),
            TextField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your phone number',
              ),
            ),
            const CustomSizedBox(height: 16),
            Row(
              children: [
                Switch(
                  value: state.isVerified,
                  onChanged: (final value) => _loginCubit.toggleVerified(),
                ),
                const CustomSizedBox(width: 8),
                Text('Is Verified', style: theme.textTheme.bodyMedium),
              ],
            ),
            const Spacer(),
            MainButton(
              title: 'Login',
              onPressed: _loginCubit.login,
              isLoading: state.isSubmitting,
              isDisabled:state.phone.isEmpty,
            ),
            CustomSizedBox(height: 64,),
          ],
        ),

    )));
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _loginCubit.close();
    super.dispose();
  }
}
