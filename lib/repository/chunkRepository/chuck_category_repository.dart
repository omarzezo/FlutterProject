import 'dart:async';
import 'package:blocpattern/Model/chunk/chuck_categories.dart';
import 'package:blocpattern/network/ApiProvider.dart';
import 'package:blocpattern/network/RibotsService.dart';

class ChuckCategoryRepository {
  ApiProvider _provider = ApiProvider();

  Future<chuckCategories> fetchChuckCategoryData() async {
    final response = await _provider.get(RibotsService.ChuckCategory);
    return chuckCategories.fromJson(response);
  }
}
