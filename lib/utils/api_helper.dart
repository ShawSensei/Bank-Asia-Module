import 'package:http/http.dart' as http;

class ApiHelper {
  static Future<http.Response> makeFormUrlEncodedPostRequest({
    required Uri apiUrl,
    required Map<String, dynamic> reqBody,
  }) async {
    // Convert reqBody to x-www-form-urlencoded
    final encodedBody = reqBody.keys.map((key) => '$key=${Uri.encodeComponent(reqBody[key]!)}').join('&');

    // Make POST request
    final response = await http.post(
      apiUrl,
      headers: <String, String>{
        'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8',
      },
      body: encodedBody,
    );

    return response;
  }
}
