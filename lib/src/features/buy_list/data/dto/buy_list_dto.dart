import 'package:minhascompras/src/features/buy_list/domain/entities/buy_list_entity.dart';

extension BuyListDto on BuyListEntity {
  static BuyListEntity fromMap(Map map) {
    return BuyListEntity(
        name: map['name'], date: DateTime.parse(map['date']), id: map['id']);
  }

  static Map toMap(BuyListEntity buyList) {
    return {'name': buyList.name, 'date': buyList.date.toString()};
  }
}
