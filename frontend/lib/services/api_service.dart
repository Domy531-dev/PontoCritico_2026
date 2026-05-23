import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = "http://10.0.2.2:8000";

  static Future<Map<String, dynamic>> analyzeCode({
    required String code,
    required String language,
  }) async {
    final response = await http.post(
      Uri.parse("$baseUrl/debug"),

      headers: {"Content-Type": "application/json"},

      body: jsonEncode({"code": code, "language": language}),
    );

    return jsonDecode(response.body);
  }
}
