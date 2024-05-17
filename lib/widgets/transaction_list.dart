import 'package:flutter/material.dart';
import 'package:orange/styles/constants.dart';
import 'package:intl/intl.dart';
import 'package:orange/classes.dart';
// import 'package:orange/classes.dart'; // Adjust path as necessary

String formatTimestamp(DateTime? time) {
  if (time == null) {
    return "Pending";
  } else {
    DateTime now = DateTime.now();
    DateTime justNow = DateTime.now().subtract(const Duration(minutes: 1));
    DateTime localTime = time.toLocal();
    if (localTime.isAfter(justNow)) {
      return 'Just now';
    } else if (localTime.isAfter(now.subtract(const Duration(days: 1)))) {
      return 'Yesterday';
    } else if (localTime.year == now.year) {
      return DateFormat('MMMM d').format(time);
    } else {
      return DateFormat('MMMM d, yyyy').format(time);
    }
  }
}

String formatSatsToDollars(int sats, double price) {
  double amount = (sats / 100000000) * price;
  return "${amount >= 0 ? '' : '- '}\$${amount.abs().toStringAsFixed(2)}";
}

Widget transactionsList(ValueNotifier<List<Transaction>> transactions,
    ValueNotifier<double> price) {
  return ValueListenableBuilder<List<Transaction>>(
    valueListenable: transactions,
    builder: (BuildContext context, List<Transaction> value, Widget? child) {
      return Expanded(
        child: ListView.builder(
          itemCount: value.length,
          itemBuilder: (context, index) {
            return buildTransactionCard(value[index], price);
          },
        ),
      );
    },
  );
}

Widget buildTransactionCard(
    Transaction transaction, ValueNotifier<double> price) {
  return Card(
    color: AppColors.background,
    elevation: 3,
    margin: const EdgeInsets.symmetric(vertical: 8),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(transaction.net < 0 ? "Sent Bitcoin" : "Received Bitcoin",
                  style: AppTextStyles.textMD),
              ValueListenableBuilder<double>(
                valueListenable: price,
                builder: (BuildContext context, double value, Widget? child) {
                  return Text(formatSatsToDollars(transaction.net, value),
                      style: AppTextStyles.textMD);
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: formatTimestamp(transaction.timestamp),
                        style: AppTextStyles.textMD
                            .copyWith(color: AppColors.textSecondary)),
                  ],
                ),
              ),
              Text("Details",
                  style: AppTextStyles.textMD.copyWith(
                      color: AppColors.textSecondary,
                      decoration: TextDecoration.underline)),
            ],
          ),
        ],
      ),
    ),
  );
}