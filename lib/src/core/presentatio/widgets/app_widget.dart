import 'package:flutter/material.dart';
import 'package:minhascompras/src/features/product/presentation/ui/add_product_page.dart';
import 'package:provider/provider.dart';

import '../../../features/product/presentation/ui/products_page.dart';
import '../../modules/buyListModule.dart';
import '../../modules/productModule.dart';



class AppWidget extends StatelessWidget {

   AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ...productModule,
        ...buyListModule
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "ToDo List",
        theme: ThemeData.dark(),
        home: const ProductsPage(),
        routes: {
          '/products':(context) => ProductsPage(),
          '/product/addProduct': (context) =>AddProducPage(),
        },
      ),
    );
  }
}