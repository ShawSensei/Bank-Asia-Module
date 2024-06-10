import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class MyHomePageController extends GetxController {
  // Define the currentIndex variable with initial value 0
  RxInt currentIndex = 0.obs;

  // Define the changeView method to change the currentIndex
  void changeView(int index) {
    currentIndex.value = index;
  }

  final CarouselController buttonCarouselController = CarouselController();
}
