// import 'package:sqflite/sqflite.dart';

// import '../../../../core/database/sqlite/db.dart';
// import '../../../domain/entities/buy_list_entity.dart';
// import '../save_to_do_list_datasoucer.dart';

// class SaveToDoListSqliteDataSource implements SaveToDoListDataSource {
//   late Database db;

//   @override
//   Future<bool> call(ToDoListEntity toDoListEntity) async {
//     db = await DB.instance.database;
//     try {
//       db.transaction((txn) async {
//         toDoListEntity.id = await txn.rawInsert(
//             'INSERT INTO todo_list(name) VALUES( "${toDoListEntity.name}")');
//       });
//       return true;
//     } catch (e) {
//       return false;
//     }
//   }
// }
