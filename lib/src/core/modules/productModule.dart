import 'package:minhascompras/src/core/utils/blocs/product_bloc/bloc_product.dart';
import 'package:minhascompras/src/features/product/data/datasource/product_sql_datasource_imp.dart';
import 'package:provider/provider.dart';

import '../../features/product/data/datasource/product_datasource.dart';
import '../../features/product/data/repositories/product_repository_imp.dart';
import '../../features/product/domain/repositorys/product_repository.dart';
import '../../features/product/domain/usecases/get_all_products/get_all_products_usecase.dart';
import '../../features/product/domain/usecases/get_all_products/get_all_products_usecase_imp.dart';
import '../../features/product/domain/usecases/get_product_by_name/get_product_by_name.dart';
import '../../features/product/domain/usecases/get_product_by_name/get_product_by_name_usecase_imp.dart';
import '../../features/product/domain/usecases/remove_product_from_list/remove_to_do_item_usecase.dart';
import '../../features/product/domain/usecases/remove_product_from_list/remove_to_do_item_usecase_imp.dart';
import '../../features/product/domain/usecases/save_product/save_product_usecase.dart';
import '../../features/product/domain/usecases/save_product/save_product_usecase_imp.dart';
import '../../features/product/domain/usecases/update_product/update_product_usecase.dart';
import '../../features/product/domain/usecases/update_product/update_product_usecase_imp.dart';

final productModule = [
  Provider<ProductDatasource>(
      create: (context) => ProductSqlDatasourceImp()),
  Provider<ProductRepository>(
      create: (context) => ProductRepositoryImp(context.read())),
  Provider<GetAllProductsUsecase>(
      create: (context) => GetAllProductsUsecaseImp(context.read())),
  Provider<SaveProductUsecase>(
      create: (context) => SaveProductUsecaseImp(context.read())),
  Provider<RemoveProductUsecase>(
      create: (context) => RemoveProductUsecaseImp(context.read())),
  Provider<GetProductByNameUsecase>(
      create: (context) => GetProductByNameUsecaseImp(context.read())),
  Provider<UpdateProductUsecase>(
      create: (context) => UpdateProductUsecaseImp(context.read())),

  Provider<BlocProduct>(create: (context) => BlocProduct(context.read()),)
];
