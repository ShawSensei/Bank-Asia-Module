import 'package:flutter/material.dart';

// Colors that we use in our app
const kPrimaryColor = Color(0xFF0053a1);
const kTextColor = Color(0xFF3C4046);
const kWhiteColor = Color(0xFFF9F8FD);

const double kDefaultPadding = 20.0;

const blueGradient = LinearGradient(
  colors: [
    Color(0xFF64B5F6), // Light blue
    Color(0xFF2196F3), // Primary blue
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  stops: [0.0, 1.0],
);
