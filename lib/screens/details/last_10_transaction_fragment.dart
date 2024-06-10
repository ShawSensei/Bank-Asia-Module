import 'package:flutter/material.dart';

import '../../constants/ui_constants.dart';
import '../../utils/transaction_body.dart';

class Last10TransactionFragment extends StatelessWidget {
  final String date, id, amount;

  const Last10TransactionFragment({super.key, required this.date, required this.id, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecoratedBox(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.black),
            ),
          ),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.all(kDefaultPadding / 2),
            height: 45,

            color: kWhiteColor,
            child: const Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text("Date"),
                ),
                Expanded(
                  flex: 5,
                  child: Text("Partculars"),
                ),
                Expanded(
                  flex: 2,
                  child: Text("Amount"),
                ),
              ],
            ),

            // child: SvgPicture.asset(icon),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                TransactionBody(
                  date: date,
                  particulars: 'NPSB IBFT $id from Bank Asia',
                  amount: amount,
                ),
                TransactionBody(
                  date: date,
                  particulars: 'NPSB IBFT $id from Bank Asia',
                  amount: amount,
                ),
                TransactionBody(
                  date: date,
                  particulars: 'NPSB IBFT $id from Bank Asia',
                  amount: amount,
                ),
                TransactionBody(
                  date: date,
                  particulars: 'NPSB IBFT $id from Bank Asia',
                  amount: amount,
                ),
                TransactionBody(
                  date: date,
                  particulars: 'NPSB IBFT $id from Bank Asia',
                  amount: amount,
                ),
                TransactionBody(
                  date: date,
                  particulars: 'NPSB IBFT $id from Bank Asia',
                  amount: amount,
                ),
                TransactionBody(
                  date: date,
                  particulars: 'NPSB IBFT $id from Bank Asia',
                  amount: amount,
                ),
                TransactionBody(
                  date: date,
                  particulars: 'NPSB IBFT $id from Bank Asia',
                  amount: amount,
                ),
                TransactionBody(
                  date: date,
                  particulars: 'NPSB IBFT $id from Bank Asia',
                  amount: amount,
                ),
                TransactionBody(
                  date: date,
                  particulars: 'NPSB IBFT $id from Bank Asia',
                  amount: amount,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
