import '../../domain/entities/product_entity.dart';

abstract class ProductDatasource{
  Future<List<Map>> getAllProducts();
  Future<List<Map>> getProductByName({required String name});
  Future<bool> remove({required int id});
  Future<bool> save({required ProductEntity product});
  Future<bool> update({required ProductEntity product});
}