import 'package:flutter/material.dart';

import '../constants/ui_constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    super.key,
    required this.title,
    required this.press,
  });

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding / 2, vertical: 5),
      child: Row(
        children: [
          TitleWithCustomUnderline(
            text: title,
          ),
          const Spacer(),
          // MaterialButton(
          //   onPressed: () {
          //     press();
          //   },
          //   child: Text(
          //     "More",
          //     style: TextStyle(color: Colors.white),
          //   ),
          //   color: kPrimaryColor,
          //   shape:
          //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          // )
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(left: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
