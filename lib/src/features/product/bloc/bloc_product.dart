import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minhascompras/src/features/product/bloc/product_event.dart';
import 'package:minhascompras/src/features/product/bloc/product_state.dart';

import 'package:minhascompras/src/features/product/domain/entities/product_entity.dart';
import 'package:minhascompras/src/features/product/domain/usecases/get_all_products/get_all_products_usecase.dart';
import 'package:minhascompras/src/features/product/domain/usecases/save_product/save_product_usecase.dart';

class BlocProduct extends Bloc<ProductEvent,ProductsState>{
  final GetAllProductsUsecase _getAllProducts;
  final SaveProductUsecase _saveProduct;
  BlocProduct( this._getAllProducts, this._saveProduct):super(ProductsInitialState()){
    on<GetAllProductsEvent>((event, emit) async{

      try{
      List<ProductEntity> products = await _getAllProducts();
        emit(ProductsSuccessState(products:products ));}
      catch(e){
        emit(ProductsErroState());
      }
      
    },);
    on<SaveProductEvent>((event, emit) async{
      try{
        var result = await _saveProduct(product: event.product);
        if (result){
           List<ProductEntity> products = await _getAllProducts();
          emit(ProductsSuccessState(products: products));
        }
      }catch(error){
        emit(ProductsErroState());
        throw Exception('ERRO ao Salvar Produto: $error');
      }
    });
  }

  
}