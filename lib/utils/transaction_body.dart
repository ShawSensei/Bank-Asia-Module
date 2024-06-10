import 'package:flutter/material.dart';

import '../constants/ui_constants.dart';

class TransactionBody extends StatelessWidget {
  const TransactionBody({
    super.key,
    required this.date,
    required this.particulars,
    required this.amount,
  });

  final String date, particulars, amount;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: DecoratedBox(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.black),
          ),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          padding: const EdgeInsets.all(kDefaultPadding / 2),
          //height: 45,

          color: kWhiteColor,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(date),
              ),
              Expanded(
                flex: 5,
                child: Text(particulars),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(amount), const Icon(Icons.visibility)],
                ),
              ),
            ],
          ),

          // child: SvgPicture.asset(icon),
        ),
      ),
    );
  }
}
