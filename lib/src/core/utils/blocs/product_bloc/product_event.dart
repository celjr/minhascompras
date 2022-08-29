import 'package:minhascompras/src/features/product/domain/entities/product_entity.dart';

abstract class ProductEvent{}

class GetAllProductsEvent implements ProductEvent{}
class SaveProductEvent implements ProductEvent{
  ProductEntity product;
  SaveProductEvent(this.product);
}