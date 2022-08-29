import '../../entities/buy_list_entity.dart';
import '../../repositories/buy_list_repository.dart';
import 'save_buy_list_usacase.dart';

class SaveBuyListUsecaseImp implements SaveBuyListUsecase {
  final BuyListRepository _buyListRepository;

  SaveBuyListUsecaseImp(this._buyListRepository);

  @override
  Future<bool> call(BuyListEntity buyListEntity) async {
    return _buyListRepository.save(buyListEntity);
  }
}
