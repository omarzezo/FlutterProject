import 'package:blocpattern/network/CustomException.dart';
import 'package:blocpattern/network/RibotsService.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';
import 'dart:async';

class ApiProvider {


  Future<dynamic> get(String url) async {
    var responseJson;
    try {
      final response = await http.get(RibotsService.baseUrl + url);
      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  dynamic _response(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        print(responseJson);
        return responseJson;
//        print('Success and response is received');
      case 400:
        throw BadRequestException(response.body.toString());
//        print('Not all required parameters provided.');
      case 401:
//        print("Unauthorized, Invalid or no credentials provided");
      case 403:
        throw UnauthorisedException(response.body.toString());
//        print("Forbidden. Invalid credentials i.e. Wrong username or password");

      case 500:
//          print('Server Error');
      case 503:
//          print('Service Under maintenance');
      case 404:
//        print('Not Found');
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}'
        );
    }
  }
}
