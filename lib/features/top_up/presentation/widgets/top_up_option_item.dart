import 'package:flutter/material.dart';
import 'package:fintech/features/top_up/domain/models/top_up_option.dart';

class TopUpOptionItem extends StatelessWidget {
  final TopUpOption option;
  final VoidCallback onTap;

  const TopUpOptionItem({
    super.key,
    required this.option,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'AED ${option.amount.toStringAsFixed(2)}',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ),
    );
  }
}
