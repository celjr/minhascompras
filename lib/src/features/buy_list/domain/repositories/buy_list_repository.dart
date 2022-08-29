import '../entities/buy_list_entity.dart';

abstract class BuyListRepository {
  Future<List<BuyListEntity>> getAllBuyLists();
  Future<BuyListEntity> getBuyListById(int id);
  Future<bool> removeProductFromList({required int idList, required int idProduct});
  Future<bool> saveProductInList({required int idList, required int idProduct});
  Future<bool> removeBuyList(int idList);
  Future<bool> save(BuyListEntity list);
  Future<bool> update(BuyListEntity list);
}