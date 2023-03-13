import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minhascompras/src/features/product/bloc/bloc_product.dart';
import 'package:minhascompras/src/features/product/bloc/product_event.dart';
import 'package:minhascompras/src/features/product/bloc/product_state.dart';
import 'package:provider/provider.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _bloc = Provider.of<BlocProduct>(context,listen: false);
      _bloc.add(GetAllProductsEvent());
    });
  }
  var isVisible = false;
  late BlocProduct _bloc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: BlocBuilder<BlocProduct, ProductsState>(
        builder: (context, state) {
          if (state is ProductsInitialState) {
            return const CircularProgressIndicator();
          } else if (state is ProductsErroState) {
            return const Text('Ocorreu um erro');
          } else {
            return Container(
              width: 200,
              height: 200,
              alignment: Alignment.center,
              color: Colors.blueGrey,
              child: Text('jajá mostro algum produto'),
            );
          }
        },
      )),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add), onPressed: () {
            Navigator.pushNamed(context, '/product/addProduct');
          }),
    );
  }

 
}
