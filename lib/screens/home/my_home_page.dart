import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/cards_controller.dart';
import '../../controllers/homepage_controller.dart';
import '../../utils/carousel_swiper.dart';
import '../../utils/custom_app_bar.dart';
import '../../utils/fragment_view.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final MyHomePageController myHPC = Get.put(MyHomePageController());
  final CardsController c = Get.put(CardsController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // Trigger function when the screen is built
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      //c.fetchCardInfo();
      c.initMethodChannel();
      //c.getCreditCardInfo();
      // c.getCardInfo(c.cards.value[c.currentIndex.value].cardNo!);
      // c.getLast10Transaction(c.cards.value[c.currentIndex.value].cardNo!);
      // c.getStatement(c.cards.value[c.currentIndex.value].cardNo!);
    });

    return Scaffold(
      appBar: const CustomAppBar(title: 'Credit Card information'),
      body: Column(
        children: [
          Obx(
            () => SizedBox(
                // margin: EdgeInsets.all(kDefaultPadding / 2),
                // width: size.width * 0.65,
                height: size.height * 0.25,
                child: c.isLoading.value ? const Center(child: CircularProgressIndicator()) : CarouselSwiper()
                //Image.asset("assets/images/virtual_card.png"),
                ),
          ),
          // Container(
          //   margin: EdgeInsets.only(
          //     left: kDefaultPadding,
          //     top: kDefaultPadding / 2,
          //     bottom: kDefaultPadding / 2,
          //     right: kDefaultPadding,
          //   ),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceAround,
          //     children: [
          //       Expanded(
          //         flex: 1,
          //         child: MaterialButton(
          //           onPressed: () {},
          //           child: Text("Card Info"),
          //           color: kPrimaryColor,
          //         ),
          //       ),
          //       Expanded(
          //         flex: 2,
          //         child: Container(
          //           margin:
          //               EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          //           child: MaterialButton(
          //             onPressed: () {},
          //             child: Text("Last 10 Transaction"),
          //             color: kPrimaryColor,
          //           ),
          //         ),
          //       ),
          //       Expanded(
          //         flex: 1,
          //         child: MaterialButton(
          //           onPressed: () {},
          //           child: Text("Statement"),
          //           color: kPrimaryColor,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          const FragmentView(),
          // CustomTabBar(),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Container(
          //       margin: EdgeInsets.all(10),
          //       height: 200,
          //       width: 560,
          //       decoration: BoxDecoration(color: Colors.blue),
          //     ),
          //     Container(
          //       margin: EdgeInsets.all(10),
          //       height: 200,
          //       width: 560,
          //       decoration: BoxDecoration(color: Colors.blue),
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}
