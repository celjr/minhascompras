import '../../entities/buy_list_entity.dart';

abstract class SaveBuyListUsecase {
  Future<bool> call(BuyListEntity buyListEntity);
}
