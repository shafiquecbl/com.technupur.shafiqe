// ignore_for_file: no_leading_underscores_for_local_identifiers, unnecessary_null_comparison, constant_identifier_names

import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiClient extends GetxService {
  static const String noInternetMessage =
      'Connection to API server failed due to internet connection';
  final int timeoutInSeconds = 30;

  final Map<String, String> _mainHeaders = {
    "Content-Type": "application/json",
    'Accept': 'application/json'
  };

  Future<http.Response?> getData(String uri,
      {Map<String, String>? headers}) async {
    try {
      http.Response response = await http
          .get(Uri.parse(uri), headers: headers ?? _mainHeaders)
          .timeout(Duration(seconds: timeoutInSeconds));

      if (response.statusCode != 200) {
        return handleError(jsonDecode(response.body), response.statusCode);
      } else {
        return response;
      }
    } catch (e) {
      socketException(e, uri);
      return null;
    }
  }

  handleError(Map<String, dynamic> body, int statusCode) {
    // handle error here
    return null;
  }

  socketException(Object e, String url) {
    if (e is SocketException) {
      // show error toast here
    } else {
      log("Error Url: $url,\nError:${e.toString()}");
      // show error toast here
    }
  }
}
