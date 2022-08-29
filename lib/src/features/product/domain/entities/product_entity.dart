
import '../value_objects/category.dart';
import '../value_objects/price.dart';

class ProductEntity {
  int? id;
  final String name;
  final List<Price>? priceList;
  final String description;
  final Category? category;
  //final int quantity; colocar na lista 
  

  ProductEntity(
      {this.id,
      required this.name,
      this.priceList,
      this.description = '',
      this.category,
 //     this.quantity = 0
      });

      

}


