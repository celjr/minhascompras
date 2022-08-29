import 'package:minhascompras/src/features/product/domain/entities/product_entity.dart';

import '../../repositorys/product_repository.dart';
import 'update_product_usecase.dart';

class UpdateProductUsecaseImp implements UpdateProductUsecase{
  final ProductRepository _productRepository;

  UpdateProductUsecaseImp(this._productRepository);
  @override
  Future<bool> call({required ProductEntity product}) {
    return _productRepository.update(product: product);
  }

}