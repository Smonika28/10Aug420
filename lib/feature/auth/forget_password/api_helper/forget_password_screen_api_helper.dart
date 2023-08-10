import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:dio/dio.dart';


void login(String email, password) async {
  try {
    final response = await post(
        Uri.parse('https://excellis.co.in/420-society-world//api/v1/forgot-password'),
        body: {
          'email': 'john@yopmail.com',

        });
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      if (kDebugMode) {
        print(data['token']);
      }
      if (kDebugMode) {
        print('Login successfully');
      }
    } else {
      if (kDebugMode) {
        print('failed');
      }
    }
  } catch (e) {
    if (kDebugMode) {
      print(e.toString());
    }
  }
}
