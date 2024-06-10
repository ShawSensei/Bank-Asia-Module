import 'dart:convert';
import 'dart:typed_data';

import 'package:basic_utils/basic_utils.dart';
import 'package:pointycastle/export.dart';
import 'package:uuid/uuid.dart';

import '../constants/text_constants.dart';

class RSAEncryption {
  String publicKey = TextConstants.publicKey;

  String encodeParam(String param) {
    String uuid = const Uuid().v4();
    String s = uuid.replaceAll(RegExp(r'-*'), '');
    String id = s.substring(0, 8);
    String name = base64.encode((id + param).codeUnits);
    return name;
  }

  RSAPublicKey rsaPublicKeyFromBase64EncodedKey(String b64) {
    final pem = '${CryptoUtils.BEGIN_RSA_PUBLIC_KEY}\n$b64\n${CryptoUtils.END_RSA_PUBLIC_KEY}';
    return CryptoUtils.rsaPublicKeyFromPem(pem);
  }

  Uint8List encryptedBytes(String data, String publicKey) {
    try {
      final rsaPublicKey = rsaPublicKeyFromBase64EncodedKey(publicKey);
      final cipher = PKCS1Encoding(RSAEngine())..init(true, PublicKeyParameter<RSAPublicKey>(rsaPublicKey));
      return cipher.process(utf8.encode(data));
    } catch (e) {
      print('encryptedBytes error: $e');
      return Uint8List(0);
    }
  }

  String getEncryptedData(String paramText) {
    String rValue = '';
    try {
      final encrypted = encryptedBytes(encodeParam(paramText), publicKey);
      rValue = base64.encode(encrypted);
    } catch (e) {
      print('getEncryptedData error: $e');
    }
    return rValue;
  }
}
