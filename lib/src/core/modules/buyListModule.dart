import 'package:provider/provider.dart';

import '../../features/buy_list/data/datasources/buy_list_datasources.dart';
import '../../features/buy_list/data/datasources/local/buy_list_sqlite_datasource_imp.dart';
import '../../features/buy_list/data/repositories/buy_list_repository_imp.dart';
import '../../features/buy_list/domain/repositories/buy_list_repository.dart';
import '../../features/buy_list/domain/usecases/get_all_buy_lists/get_all_buy_lists_usecase.dart';
import '../../features/buy_list/domain/usecases/get_all_buy_lists/get_all_buy_lists_usecase_imp.dart';
import '../../features/buy_list/domain/usecases/get_buy_list_by_name/get_buy_list_by_name_usecase.dart';
import '../../features/buy_list/domain/usecases/get_buy_list_by_name/get_buy_list_by_name_usecase_imp.dart';
import '../../features/buy_list/domain/usecases/remove_buy_list/remove_buy_list_usecase.dart';
import '../../features/buy_list/domain/usecases/remove_buy_list/remove_buy_list_usecase_imp.dart';
import '../../features/buy_list/domain/usecases/save_buy_list/save_buy_list_usacase.dart';
import '../../features/buy_list/domain/usecases/save_buy_list/save_buy_list_usecase_imp.dart';
import '../../features/buy_list/domain/usecases/update_buy_list/update_buy_list_usecase.dart';
import '../../features/buy_list/domain/usecases/update_buy_list/update_buy_list_usecase_imp.dart';

final buyListModule = [
  Provider<BuyListDatasource>(
      create: (context) => BuyListSqliteDatasourceImp()),
  Provider<BuyListRepository>(
      create: (context) => BuyListRepositoryImp(context.read())),
  Provider<GetAllBuyListsUsecase>(
      create: (context) => GetAllBuyListsUsecaseImp(context.read())),
  Provider<SaveBuyListUsecase>(
      create: (context) => SaveBuyListUsecaseImp(context.read())),
  Provider<RemoveBuyListUsecase>(
      create: (context) => RemoveBuyListUsecaseImp(context.read())),
  Provider<GetBuyListByIdUsecase>(
      create: (context) => GetBuyListByIdUsecaseImp(context.read())),
  Provider<UpdateBuyListUsecase>(
      create: (context) => UpdateBuyListUsecaseImp(context.read())),
];
