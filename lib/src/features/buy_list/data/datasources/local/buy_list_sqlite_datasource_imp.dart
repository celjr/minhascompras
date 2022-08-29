import 'package:minhascompras/src/features/buy_list/data/datasources/buy_list_datasources.dart';
import 'package:minhascompras/src/features/buy_list/domain/entities/buy_list_entity.dart';
import 'package:sqflite/sqflite.dart';

import '../../../../../core/database/sqlite/db.dart';

class BuyListSqliteDatasourceImp implements BuyListDatasource{
  late Database db;


  @override
  Future<List<Map>> getAllBuyLists() async {
     db = await DB.instance.database;
    List<Map> list = await db.query('buy_list');
    return list;
  }

  @override
  Future<Map> getBuyListById(int id) async {
     db = await DB.instance.database;
    List<Map> list = await db.query('buy_list',where: 'id = ?',whereArgs: [id]);
    return list.first;
  }

  @override
  Future<bool> removeBuyList(int idList) async {
    db = await DB.instance.database;
    try {
      db.rawDelete('DELETE FROM buy_list WHERE id=?', [idList]);

      return true;
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
  Future<bool> saveBuyList(BuyListEntity list)async {
     db = await DB.instance.database;
    try {
      db.transaction((txn) async {
        list.id = await txn.rawInsert(
            'INSERT INTO buy_list(name,date) VALUES( "${list.name}","${list.date.toString()}")');
      });
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> saveProductInList({required int idList, required int idProduct}) {
    // TODO: implement saveProductInList
    throw UnimplementedError();
  }

  @override
  Future<bool> update(BuyListEntity list) {
    // TODO: implement update
    throw UnimplementedError();
  }

}