import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/home/my_home_page.dart';

void main() {
  runApp(const BankAsiaApp());
}

class BankAsiaApp extends StatelessWidget {
  const BankAsiaApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
