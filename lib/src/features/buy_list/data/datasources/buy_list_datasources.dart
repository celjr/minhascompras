import '../../domain/entities/buy_list_entity.dart';

abstract class BuyListDatasource{
  Future<List<Map>> getAllBuyLists();
  Future<Map> getBuyListById(int id);
  Future<bool> removeProductFromList({required int idList, required int idProduct});
  Future<bool> saveProductInList({required int idList, required int idProduct});
  Future<bool> removeBuyList(int idList);
  Future<bool> saveBuyList(BuyListEntity list);
  Future<bool> update(BuyListEntity list);
}