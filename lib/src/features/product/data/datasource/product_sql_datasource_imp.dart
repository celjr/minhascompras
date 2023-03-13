import 'package:minhascompras/src/core/database/sqlite/db.dart';
import 'package:minhascompras/src/features/product/data/datasource/product_datasource.dart';
import 'package:minhascompras/src/features/product/domain/entities/product_entity.dart';
import 'package:sqflite/sqflite.dart';

class ProductSqlDatasourceImp implements ProductDatasource {
  late Database db;

  @override
  Future<List<Map>> getAllProducts() async {
    db = await DB.instance.database;
    List<Map> result = [];
    result = await db.rawQuery(
        'SELECT p.id,p.name,p.description,c.name FROM product AS p CROSS JOIN category as c WHERE p.category_id = c.id  ');
    return result;
  }

  @override
  Future<List<Map>> getProductByName({required String name}) {
    // TODO: implement getProductByName
    throw UnimplementedError();
  }

  @override
  Future<bool> remove({required int id}) async {
    db = await DB.instance.database;
    try {
      db.rawDelete('DELETE FROM products WHERE id=?', [id]);

      return true;
    } catch (e) {
      return false;
    }
    
  }

  @override
  Future<bool> save({required ProductEntity product}) async {
    db = await DB.instance.database;
    try {
     var result = db.rawInsert(
          'INSERT INTO (name, descriptiom, id_category) VALUES ("${product.name}", "${product.description}", ${product.category!.id ?? 0})');
      if(result != 0){
      return true;
      }else throw Exception('ERRO AO SALVAR NO BANCO');
    } catch (entities) {
      return false;
    }
  }

  @override
  Future<bool> update({required ProductEntity product}) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
