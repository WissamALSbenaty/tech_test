import 'package:fintech/features/auth/presentation/bloc/auth_bloc/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatelessWidget {

  const SettingsPage({super.key});

  @override
  Widget build(final BuildContext context) {
    return Center(
      child: ElevatedButton.icon(
        onPressed: context.read<AuthBloc>().logout,
        icon: const Icon(Icons.logout),
        label: const Text('Logout'),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
