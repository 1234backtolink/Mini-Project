import 'dart:convert';


import 'package:application1/src/Pages/config/api.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

class NetworkService {
  NetworkService._internal();

  static final NetworkService _instace = NetworkService._internal();

  factory NetworkService() => _instace;

  static final Dio _dio = Dio();

  Future<String> validateUserLoginDio(String username, String password,
      String name, String surname) async {
    FormData data = FormData.fromMap({
      'username': username,
      'password': password,
      'name': name,
      'surname': surname,
    });
    try {
      //var url = API.BASE_URL + '/flutterapp/f_user_login.php';
      //var url = API.BASE_URL + '/api/user';
      var url = API.BASE_URL + '/flutterapi/api/user';
      print(url);
      final response = await _dio.post(url, data: data);
      if (response.statusCode == 200) {
        var jsonString = response.data;
        // var jsonMap = json.encode(jsonString);
        String username = jsonString["username"];
        print('username = ' + username);
        String password = jsonString["password"];
        print('password = ' + password);
        if (username != 'failed') {
          return 'pass';
        } else {
          return 'failed';
        }
      } else {
        return 'failed';
      }
    } catch (Exception) {
      throw Exception('Network failed');
    }
  }


  Future<String> validateRegisterDio(String username, String password,
      String name, String surname) async {
    FormData data = FormData.fromMap({
      'username': username,
      'password': password,

    });
  }
}