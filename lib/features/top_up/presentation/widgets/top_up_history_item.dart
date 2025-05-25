import 'package:fintech/core/utils/constants.dart';
import 'package:fintech/features/top_up/domain/models/top_up_history_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TopUpHistoryItem extends StatelessWidget {
  final TopUpHistoryModel history;

  const TopUpHistoryItem({
    required this.history, super.key,
  });

  @override
  Widget build(final BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: [
          Text(
            DateFormat('dd MMM yyyy, hh:mm a').format(history.createdAt),
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          Text(
            'AED ${history.amount-topUpCharge}',
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}