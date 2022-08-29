import 'package:flutter_test/flutter_test.dart';
import 'package:minhascompras/src/core/database/sqlite/db.dart';
import 'package:minhascompras/src/features/product/data/datasoucer/product_datasoucer.dart';
import 'package:minhascompras/src/features/product/data/datasoucer/product_sql_datasoucer_imp.dart';
import 'package:sqflite/sqlite_api.dart';

void main() {
  
  test('product sql datasoucer imp ...', () async {
    
    ProductDatasoucer datasoucer = ProductSqlDatasoucerImp();
    


    var result = await datasoucer.getAllProducts();

    expect(result, isInstanceOf<List<Map>>());



  });
}
