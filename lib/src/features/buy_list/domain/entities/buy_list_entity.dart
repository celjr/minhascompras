import '../../../product/domain/entities/product_entity.dart';

class BuyListEntity {
  int? id;
  late List<ProductEntity> _list;
  final String name;
  final DateTime date;

  BuyListEntity(
      {this.id, List<ProductEntity>? itemList, required this.name,required this.date}) {
    if (itemList == null) {
      _list = [];
    } else {
      _list = itemList;
    }
  }

  List<ProductEntity> get list => _list;

  void addItem(ProductEntity item) {
    _list.add(item);
  }

  void removeItem(int index) {
    _list.removeAt(index);
  }
}
