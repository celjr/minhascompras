import '../../entities/buy_list_entity.dart';

abstract class GetBuyListByIdUsecase {
  Future<BuyListEntity> call(int id);
}
