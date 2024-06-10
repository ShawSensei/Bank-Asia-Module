import 'package:flutter/material.dart';
import 'package:test_module_flutter/utils/text_body_card_info.dart';
import 'package:test_module_flutter/utils/title_with_btn.dart';

import '../constants/ui_constants.dart';

class CardsFromCardInfo extends StatelessWidget {
  final String credit, dueAmount, minPaymentBDT, date, minPaymentUSD;

  const CardsFromCardInfo({
    super.key,
    required this.credit,
    required this.dueAmount,
    required this.minPaymentBDT,
    required this.date,
    required this.minPaymentUSD,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.all(kDefaultPadding / 2),
            height: 170,
            decoration: BoxDecoration(color: kWhiteColor, borderRadius: BorderRadius.circular(6), boxShadow: [
              BoxShadow(
                offset: const Offset(5, 20),
                blurRadius: 22,
                color: kPrimaryColor.withOpacity(0.22),
              ),
              const BoxShadow(offset: Offset(-15, -15), blurRadius: 20, color: Colors.white60)
            ]),
            child: Column(
              children: [
                TitleWithMoreBtn(
                  title: 'BDT',
                  press: () {},
                ),
                TextBodyCardInfo(
                  text: 'Available Credit Limit',
                  amount: credit,
                ),
                TextBodyCardInfo(
                  text: 'Total Due Amount',
                  amount: dueAmount,
                ),
                TextBodyCardInfo(
                  text: 'Minimum Due',
                  amount: minPaymentBDT,
                ),
                TextBodyCardInfo(
                  text: 'Payment Due Date',
                  amount: date,
                )
              ],
            )),
        Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.all(kDefaultPadding / 2),
            height: 170,
            decoration: BoxDecoration(color: kWhiteColor, borderRadius: BorderRadius.circular(6), boxShadow: [
              BoxShadow(
                offset: const Offset(5, 15),
                blurRadius: 22,
                color: kPrimaryColor.withOpacity(0.22),
              ),
              const BoxShadow(offset: Offset(-15, -15), blurRadius: 20, color: Colors.white60)
            ]),
            child: Column(
              children: [
                TitleWithMoreBtn(
                  title: 'USD',
                  press: () {},
                ),
                TextBodyCardInfo(
                  text: 'Available Credit Limit',
                  amount: credit,
                ),
                TextBodyCardInfo(
                  text: 'Total Due Amount',
                  amount: dueAmount,
                ),
                TextBodyCardInfo(
                  text: 'Minimum Due',
                  amount: minPaymentUSD,
                ),
                TextBodyCardInfo(
                  text: 'Payment Due Date',
                  amount: date,
                )
              ],
            )),
        // Container(
        //     margin: EdgeInsets.symmetric(vertical: 10),
        //     padding: EdgeInsets.all(kDefaultPadding / 2),
        //     height: 170,
        //     decoration: BoxDecoration(
        //         color: kWhiteColor,
        //         borderRadius: BorderRadius.circular(6),
        //         boxShadow: [
        //           BoxShadow(
        //             offset: Offset(5, 15),
        //             blurRadius: 22,
        //             color: kPrimaryColor.withOpacity(0.22),
        //           ),
        //           BoxShadow(
        //               offset: Offset(-15, -15),
        //               blurRadius: 20,
        //               color: Colors.white60)
        //         ]),
        //     child: Column(
        //       children: [
        //         TitleWithMoreBtn(
        //           title: 'Euro',
        //           press: () {},
        //         ),
        //         TextBodyCardInfo(
        //           text: 'Available Credit Limit',
        //           amount: credit,
        //         ),
        //         TextBodyCardInfo(
        //           text: 'Total Due Amount',
        //           amount: dueAmount,
        //         ),
        //         TextBodyCardInfo(
        //           text: 'Minimum Due',
        //           amount: minimum,
        //         ),
        //         TextBodyCardInfo(
        //           text: 'Payment Due Date',
        //           amount: date,
        //         )
        //       ],
        //     )),
      ],
    );
  }
}
