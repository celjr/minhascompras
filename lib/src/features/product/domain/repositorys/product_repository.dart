import '../entities/product_entity.dart';

abstract class ProductRepository {
  Future<List<ProductEntity>> getAllProducts();
  Future<List<ProductEntity>> getProductByName({required String name});
  Future<bool> remove({required int id});
  Future<bool> save({required ProductEntity product});
  Future<bool> update({required ProductEntity product});
}