import 'package:minhascompras/src/features/buy_list/data/datasources/buy_list_datasources.dart';
import 'package:minhascompras/src/features/buy_list/data/dto/buy_list_dto.dart';
import 'package:minhascompras/src/features/buy_list/domain/entities/buy_list_entity.dart';
import 'package:minhascompras/src/features/buy_list/domain/repositories/buy_list_repository.dart';

class BuyListRepositoryImp implements BuyListRepository{
  final BuyListDatasource _datasource;

  BuyListRepositoryImp(this._datasource);

  
  @override
  Future<List<BuyListEntity>> getAllBuyLists() async {
    List<BuyListEntity> lists = [];
    var data = await _datasource.getAllBuyLists(); 
    lists = data.map((e) => BuyListDto.fromMap(e)).toList();
    return lists;
  }

  @override
  Future<BuyListEntity> getBuyListById(int id) {
    // TODO: implement getBuyListById
    throw UnimplementedError();
  }

  @override
  Future<bool> removeBuyList(int idList) async{
    bool result;
    try {
      result = await _datasource.removeBuyList(idList);
      return result;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> removeProductFromList({required int idList, required int idProduct}) {
    // TODO: implement removeProductFromList
    throw UnimplementedError();
  }

  @override
  Future<bool> save(BuyListEntity list) async{
    bool result;
    try {
      result = await _datasource.saveBuyList(list);
      return result;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> update(BuyListEntity list) async{
    bool result;
    try {
      result = await _datasource.update(list);
      return result;
    } catch (e) {
      return false;
    }
  }
  
  @override
  Future<bool> saveProductInList({required int idList, required int idProduct}) {
    // TODO: implement saveProductInList
    throw UnimplementedError();
  }

}