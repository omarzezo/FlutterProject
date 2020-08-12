import 'package:blocpattern/Model/chunk/chuck_response.dart';
import 'dart:async';

import 'package:blocpattern/network/ApiProvider.dart';
import 'package:blocpattern/network/RibotsService.dart';

class ChuckRepository {
  ApiProvider _provider = ApiProvider();

  Future<chuckResponse> fetchChuckJoke(String category) async {
    final response = await _provider.get(RibotsService.ChuckCategoryById + category);
    return chuckResponse.fromJson(response);
  }
}
