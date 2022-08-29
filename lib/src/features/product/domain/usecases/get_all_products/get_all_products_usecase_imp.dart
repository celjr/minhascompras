

import 'package:minhascompras/src/features/product/domain/entities/product_entity.dart';
import 'package:minhascompras/src/features/product/domain/repositorys/product_repository.dart';

import 'get_all_products_usecase.dart';

class GetAllProductsUsecaseImp implements GetAllProductsUsecase{
  final ProductRepository _productRepository;

  GetAllProductsUsecaseImp(this._productRepository);
  
  @override
  Future<List<ProductEntity>> call() {
    return _productRepository.getAllProducts();
  }
  
}