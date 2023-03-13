import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:minhascompras/src/features/product/bloc/bloc_product.dart';
import 'package:minhascompras/src/features/product/bloc/product_event.dart';
import 'package:minhascompras/src/features/product/domain/value_objects/category.dart';
import 'package:provider/provider.dart';

class AddProducPage extends StatefulWidget {

  AddProducPage({super.key});
  @override
  State<AddProducPage> createState() => _AddProducPageState();
}


class _AddProducPageState extends State<AddProducPage> {
late BlocProduct _bloc;

  

  List<DropdownMenuItem<Category>> categories = [
    DropdownMenuItem(child: Text('aqui'))
  ];
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _bloc = Provider.of<BlocProduct>(context,listen: false);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Form(
            child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(16.0),
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    'Adicionar Produto',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Divider(height: 5,color: Colors.white,),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  decoration: const InputDecoration(
                    label: Text('Nome do Produto'),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  maxLines: 10,
                  minLines: 5,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                    label: Text('Descrição'),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(8.0),
                        width: MediaQuery.of(context).size.width / 2,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            label: const Text('Preço atual'),
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 0.4,
                            ),
                            border: const OutlineInputBorder(),
                          ),
                        )),
                    Container(
                        padding: const EdgeInsets.all(8.0),
                        width: MediaQuery.of(context).size.width / 2,
                        child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              label: const Text('Categoria'),
                              constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.of(context).size.width * 0.4,
                              ),
                              border: const OutlineInputBorder(),
                            ),
                            items: categories,
                            onChanged: (value) {}))
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: () {
                  _bloc.add(SaveProductEvent());
                 },
              child: Text('Adicionar'),),)
            ],
          ),
        )));
  }
}
