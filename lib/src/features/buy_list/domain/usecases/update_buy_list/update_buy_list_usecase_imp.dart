
import '../../entities/buy_list_entity.dart';
import '../../repositories/buy_list_repository.dart';
import 'update_buy_list_usecase.dart';

class UpdateBuyListUsecaseImp implements UpdateBuyListUsecase {
  final BuyListRepository _buyListRepository;

  UpdateBuyListUsecaseImp(this._buyListRepository);

  

  @override
  Future<bool> call(BuyListEntity buyListEntity) async {
    return await _buyListRepository.update(buyListEntity);
  }
}
