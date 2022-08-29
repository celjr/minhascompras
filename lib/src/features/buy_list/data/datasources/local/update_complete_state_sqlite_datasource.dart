// import 'package:sqflite/sqflite.dart';
// import '../../../../core/database/sqlite/db.dart';
// import '../../../../features/product_entity.dart';
// import '../update_complete_state_datasource.dart';

// class UpdateCompleteStateSqliteDataSource
//     implements UpdateCompleteStateDataSource {
//   late Database db;

//   @override
//   Future<bool> call(ToDoItemEntity item) async {
//     db = await DB.instance.database;
//     try {
//       db.rawUpdate('UPDATE todo_item SET is_completed = ? WHERE id =?',
//           [item.isComplete ? 1 : 0, item.id]);
//       return true;
//     } catch (e) {
//       return false;
//     }
//   }
// }
