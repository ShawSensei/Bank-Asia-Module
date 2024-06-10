import 'package:flutter/material.dart';

import '../components/parallax_swiper.dart';

class ParallaxSwiperPage extends StatelessWidget {
  const ParallaxSwiperPage({super.key});

  /// List of image URLs to display in the slider.
  static const images = [
    "assets/images/virtual_card.png",
    "assets/images/virtual_card.png",
    "assets/images/virtual_card.png",
    "assets/images/virtual_card.png",
  ];

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 220,
          child: ParallaxSwiper(
            // List of image URLs to display
            images: images,
            // Fraction of the viewport for each image
            dragToScroll: true,
            viewPortFraction: 0.9,
            parallaxFactor: 10.0,
            padding: EdgeInsets.all(16.0),
            // Disable the background zoom effect
            backgroundZoomEnabled: true,
            // Disable the foreground fade effect
            foregroundFadeEnabled: false,
          ),
        ),
      ],
    );
  }
}
