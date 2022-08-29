import 'package:minhascompras/src/features/product/domain/entities/product_entity.dart';
import 'package:minhascompras/src/features/product/domain/repositorys/product_repository.dart';
import 'package:minhascompras/src/features/product/domain/usecases/save_product/save_product_usecase.dart';

class SaveProductUsecaseImp implements SaveProductUsecase{
  final ProductRepository _productRepository;

  SaveProductUsecaseImp(this._productRepository);
  
  @override
  Future<bool> call({required ProductEntity product}) {
    return _productRepository.save(product:  product);
  }
}