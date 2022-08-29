import '../../entities/buy_list_entity.dart';
import '../../repositories/buy_list_repository.dart';
import 'remove_buy_list_usecase.dart';

class RemoveBuyListUsecaseImp implements RemoveBuyListUsecase {
   final BuyListRepository _buyListRepository;

  RemoveBuyListUsecaseImp(this._buyListRepository);

  

  @override
  Future<bool> call(int id) async {
    return await _buyListRepository.removeBuyList(id);
  }
}
