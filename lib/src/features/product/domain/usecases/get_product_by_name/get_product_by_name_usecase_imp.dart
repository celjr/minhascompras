import 'package:minhascompras/src/features/product/domain/entities/product_entity.dart';

import '../../repositorys/product_repository.dart';
import 'get_product_by_name.dart';

class GetProductByNameUsecaseImp implements GetProductByNameUsecase{
 final ProductRepository _productRepository;

  GetProductByNameUsecaseImp(this._productRepository);

  @override
  Future<List<ProductEntity>> call({required String name}) {
    return _productRepository.getProductByName(name: name);
  }
  
 
}