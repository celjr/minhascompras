import 'package:minhascompras/src/features/product/domain/entities/product_entity.dart';

abstract class UpdateProductUsecase{
  Future<bool> call({required ProductEntity product});
}