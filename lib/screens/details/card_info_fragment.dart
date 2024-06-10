import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/cards_controller.dart';
import '../../utils/cards_from_card_info.dart';

class CardInfoFragment extends StatelessWidget {
  //final CardInfoResModel cardInfo; // Receive CardInfoResModel as a parameter
  final CardsController c = Get.put(CardsController());

  CardInfoFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Obx(
            () => Visibility(
              visible: c.isLoading.value,
              child: const CircularProgressIndicator(),
            ),
          ),
          Obx(
            () => Visibility(
              visible: !c.isLoading.value,
              child: CardsFromCardInfo(
                credit: c.cardInfo.value.accountNo!,
                // Use credit from CardInfoModel
                dueAmount: c.cardInfo.value.outstandingUSD!,
                // Use dueAmount from CardInfoModel
                minPaymentBDT: c.cardInfo.value.minPaymentBDT!,
                // Use minimum from CardInfoModel
                date: c.cardInfo.value.paymentDueDate!,
                minPaymentUSD: c.cardInfo.value.minPaymentUSD!, // Use date from CardInfoModel
              ),
            ),
          ),
        ],
      ),
    );
  }
}
