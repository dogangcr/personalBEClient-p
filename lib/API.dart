import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "http://192.168.1.49:8080/api";

class API {
  static Future getUsers() {
    var url = baseUrl + "/note/user";
    return http.get(url);
  }
}