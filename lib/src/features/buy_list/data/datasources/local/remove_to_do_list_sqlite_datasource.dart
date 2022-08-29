// import 'package:sqflite/sqflite.dart';

// import '../../../../core/database/sqlite/db.dart';
// import '../../../domain/entities/buy_list_entity.dart';
// import '../remove_to_do_list_datasource.dart';

// class RemoveToDoListSqliteDatasource implements RemoveToDoListDatasource {
//   late Database db;

//   @override
//   Future<bool> call(ToDoListEntity list) async {
//     // TODO: implement call
//     db = await DB.instance.database;
//     try {
//       db.transaction((txn) async {
//         await txn.delete(
//           'todo_item',
//           where: 'list_id = ?',
//           whereArgs: [list.id],
//         );
//         await txn.delete(
//           'todo_list',
//           where: 'id=?',
//           whereArgs: [list.id],
//         );
//       });
//       return true;
//     } catch (e) {
//       return false;
//     }
//   }
// }
