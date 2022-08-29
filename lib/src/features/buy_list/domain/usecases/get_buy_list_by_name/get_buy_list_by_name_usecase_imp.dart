import 'package:minhascompras/src/features/buy_list/domain/entities/buy_list_entity.dart';
import 'package:minhascompras/src/features/buy_list/domain/repositories/buy_list_repository.dart';
import 'package:minhascompras/src/features/buy_list/domain/usecases/get_all_buy_lists/get_all_buy_lists_usecase.dart';
import 'package:minhascompras/src/features/buy_list/domain/usecases/get_buy_list_by_name/get_buy_list_by_name_usecase.dart';

class GetBuyListByIdUsecaseImp implements GetBuyListByIdUsecase{
  final BuyListRepository _repository;

  GetBuyListByIdUsecaseImp(this._repository);
  
  @override
  Future<BuyListEntity> call(int id) async{
    return await _repository.getBuyListById(id);
  }

}