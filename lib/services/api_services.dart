import 'dart:convert';
import 'dart:io';

import 'package:chatgptapplication/constants/api_cons.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static Future<void> getModels() async {
    try {
      //our request
      var response = await http.get(
        Uri.parse('$baseUrl/models'),
        headers: {"Authorization": "Bearer $apiKey"},
      );
      Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      if(jsonResponse.containsKey('error')){
        print('error ${jsonResponse['error']['message']}');
        throw HttpException( jsonResponse['error']['message']);
      }
      print('response $jsonResponse');
    } catch (e) {
      print('error $e');
    }
  }
}
