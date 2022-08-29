import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minhascompras/src/core/utils/blocs/product_bloc/product_event.dart';
import 'package:minhascompras/src/core/utils/blocs/product_bloc/product_state.dart';
import 'package:minhascompras/src/features/product/domain/usecases/get_all_products/get_all_products_usecase.dart';

class BlocProduct extends Bloc<ProductEvent,ProductsState>{
  final GetAllProductsUsecase _getAllProducts;
  BlocProduct( this._getAllProducts):super(ProductsInitialState()){
    on<GetAllProductsEvent>((event, emit) async{
      emit(ProductsSuccessState(products: await _getAllProducts()));
      
    },);
    on<SaveProductEvent>((event, emit) {
      
    });
  }

  
}