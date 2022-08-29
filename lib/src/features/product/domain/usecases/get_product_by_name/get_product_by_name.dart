import 'package:minhascompras/src/features/product/domain/entities/product_entity.dart';

abstract class GetProductByNameUsecase {
  Future<List<ProductEntity>> call({required String name});
}