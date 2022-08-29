

import '../../entities/buy_list_entity.dart';

abstract class UpdateBuyListUsecase {
  Future<bool> call(BuyListEntity buyListEntity);
}
