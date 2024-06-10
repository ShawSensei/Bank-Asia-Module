import 'package:flutter/material.dart';

import '../models/card_model.dart';

// class CardList {
//   static final List<CardInfoModel> cardInfo = [
//     CardInfoModel(
//       name: 'Salmon Sushi',
//       id: '2345 2345 2345 2525',
//       imagePath: "assets/images/virtual_card.png",
//     ),
//     CardInfoModel(
//       name: 'Nitan grill',
//       id: '7344 2345 2345 4747',
//       imagePath: "assets/images/Pink_credit.png",
//     ),
//     CardInfoModel(
//       name: 'Tuil List',
//       id: '7977 2345 2345 8976',
//       imagePath: "assets/images/virtual_card.png",
//     ),
//     CardInfoModel(
//       name: 'Opem hien',
//       id: '4646 2345 2345 4647',
//       imagePath: "assets/images/Pink_credit.png",
//     ),
//   ];
// }

import 'dart:convert';
import 'package:http/http.dart' as http;

class CardList {
  static Future<List<CardInfoModel>> fetchCards() async {
    final response = await http.get(Uri.parse('http://10.11.201.52:81/pracBankAsia/api/card-info'));

    debugPrint("${response.statusCode}");

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => CardInfoModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load card info');
    }
  }
}
