import 'package:minhascompras/src/features/product/domain/entities/product_entity.dart';


abstract class ProductsState {
  final List<ProductEntity> products;

  ProductsState({required this.products});
}

class ProductsInitialState extends ProductsState {
  ProductsInitialState() : super(products: []);
}
class ProductsLoadingState extends ProductsState {
  ProductsLoadingState() : super(products: []);
}
class ProductsSuccessState extends ProductsState {
  ProductsSuccessState({required super.products}) ;
}
class ProductsErroState extends ProductsState {
  ProductsErroState() : super(products: []);
}