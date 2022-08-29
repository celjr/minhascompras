import '../../domain/entities/product_entity.dart';

extension ProductDto on ProductEntity {
  static ProductEntity fromMap(Map map) {
    ProductEntity product = ProductEntity(
        name: map['name'],
        description: map['description'],
        id: map['id'],
        priceList: map['priceList']);
    return product;
  }
  static Map<String,dynamic> toMap(ProductEntity product){
    Map<String,dynamic> map = {
      'id': product.id,
      'name': product.name,
      'description': product.description,
      'priceList': product.priceList
    };
    
    return map;
  }
}
