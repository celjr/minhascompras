import 'package:minhascompras/src/features/product/domain/entities/product_entity.dart';

abstract class GetAllProductsUsecase {
  Future<List<ProductEntity>> call();
}