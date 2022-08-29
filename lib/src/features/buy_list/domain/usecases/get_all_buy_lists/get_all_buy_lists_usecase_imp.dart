import '../../entities/buy_list_entity.dart';
import '../../repositories/buy_list_repository.dart';
import 'get_all_buy_lists_usecase.dart';

class GetAllBuyListsUsecaseImp implements GetAllBuyListsUsecase {
  final BuyListRepository _buyListRepository;

  GetAllBuyListsUsecaseImp(this._buyListRepository);

  @override
  Future<List<BuyListEntity>> call() {
    return _buyListRepository.getAllBuyLists();
  }
}
