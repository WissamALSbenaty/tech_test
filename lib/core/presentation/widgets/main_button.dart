import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final bool isLoading;
  final bool isDisabled;

  const MainButton({
    required this.title, required this.onPressed, super.key,
    this.isLoading = false,
    this.isDisabled = false,
  });

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: isDisabled || isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: theme.primaryColor,
          disabledBackgroundColor: theme.disabledColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: isLoading
            ? const SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator(
                    strokeWidth: 2, color: Colors.white),
              )
            : Text(
                title,
                style:
                    theme.textTheme.labelLarge?.copyWith(color: Colors.white),
              ),
      ),
    );
  }
}
