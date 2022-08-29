import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/custom_dialog_add_list_widget.dart';
import '../widgets/custom_dialog_widget.dart';

class ToDoListPage extends StatefulWidget {
  const ToDoListPage({Key? key}) : super(key: key);

  @override
  State<ToDoListPage> createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Para Fazer'),
        ),
        body: const Padding(
          padding:  EdgeInsets.fromLTRB(20, 20, 20, 60),
          child:  Center(
              child:  Text(
            'Sem lista de tarefas no momento!',
            style: TextStyle(fontSize: 20),
          )),
        ),
        
  );
  }
}
