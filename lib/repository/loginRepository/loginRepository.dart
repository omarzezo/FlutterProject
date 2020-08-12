import 'package:blocpattern/Model/login/LoginResponse.dart';
import 'package:blocpattern/network/ApiProvider.dart';

class LoginApi {
  ApiProvider _provider = ApiProvider();

  Future<LoginResponse> callLoginMethod(String email, String password) async {
    final response = await _provider.get("jokes/random?email=" + email+"&password="+password);
    return LoginResponse.fromJson(response);
  }

}