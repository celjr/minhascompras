import '../../entities/buy_list_entity.dart';

abstract class GetAllBuyListsUsecase {
  Future<List<BuyListEntity>> call();
}
