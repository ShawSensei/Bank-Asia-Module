import 'package:flutter/material.dart';

import '../constants/ui_constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(color: kWhiteColor),
      ),
      titleSpacing: 10,
      centerTitle: true,
      toolbarHeight: 80,
      toolbarOpacity: 0.8,
      shadowColor: kWhiteColor,
      elevation: 20.0,
      backgroundColor: kPrimaryColor,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.arrow_back),
        color: kWhiteColor,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(80);
}
