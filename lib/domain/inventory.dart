import 'package:questforge/domain/exception.dart';

import 'character.dart';
import 'item.dart';

class Inventory {
  final List<Item> _items = [];

  void add(Item item) {
    _items.add(item);
  }

  String use(int index, Character target) {
   if (_items.isEmpty) {
    throw InventoryEmptyError(
      "Inventory is empty",
    );
  }

  if (index < 0 || index >= _items.length) {
    throw InventoryEmptyError(
      "Invalid inventory index: $index",
    );
  }

  final item = _items.removeAt(index);

  return item.apply(target);
  }
  

  List<String> listItems() {
    return _items
        .map((item) => item.runtimeType.toString())
        .toList();
  }
}