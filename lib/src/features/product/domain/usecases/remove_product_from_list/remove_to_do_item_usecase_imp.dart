import '../../entities/product_entity.dart';
import '../../repositorys/product_repository.dart';
import 'remove_to_do_item_usecase.dart';

class RemoveProductUsecaseImp implements RemoveProductUsecase {
  final ProductRepository _productRepository;

  RemoveProductUsecaseImp(this._productRepository);

  @override
  Future<bool> call({required int id}) {
    return _productRepository.remove(id: id);
  }
}
