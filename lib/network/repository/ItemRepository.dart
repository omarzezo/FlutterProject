import 'package:blocpattern/Model/Item.dart';
import 'package:blocpattern/Model/ItemRepo.dart';

import 'ItemProvider.dart';

class ItemRepository{
  final itemProvider = ItemProvider();
  Future<List<Item>> fetchAllItem() => itemProvider.fetchItemList();
  Future<List<ItemRepo>> fetchAllRepo() => itemProvider.fetchRepoList();
//---------------PROMOCION------------------------------------------
}