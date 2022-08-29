import 'package:minhascompras/src/features/product/data/dto/productDto.dart';
import 'package:minhascompras/src/features/product/domain/entities/product_entity.dart';
import 'package:minhascompras/src/features/product/domain/repositorys/product_repository.dart';

import '../datasource/product_datasource.dart';

class ProductRepositoryImp implements ProductRepository {
  final ProductDatasource _datasource;

  ProductRepositoryImp(this._datasource);

  @override
  Future<List<ProductEntity>> getAllProducts() async {
    List<ProductEntity> products = [];
    var data = await _datasource.getAllProducts();
    products = data.map((e) => ProductDto.fromMap(e)).toList();
    return products;
  }

  @override
  Future<List<ProductEntity>> getProductByName({required String name}) async {
    List<ProductEntity> products = [];
    var data = await _datasource.getProductByName(name: name);
    products = data.map((e) => ProductDto.fromMap(e)).toList();
    return products;
  }

  @override
  Future<bool> remove({required int id})async {
    bool result;
    try {
      result = await _datasource.remove(id: id);
      return result;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> save({required ProductEntity product}) async{
    bool result;
    try {
      result = await _datasource.save(product: product);
      return result;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> update({required ProductEntity product})async {
    bool result;
    try {
      result = await _datasource.save(product: product);
      return result;
    } catch (e) {
      return false;
    }
  }
}
