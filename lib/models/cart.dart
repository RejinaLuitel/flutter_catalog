import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/models/catolog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
  //collection od IDs Or store Id of each item
  late CatalogModel _catalog;

  final List<int> _itemId = [];

//Get catalog
  CatalogModel get catalog => _catalog;

//set catalog
  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

//Get item in the cart page
  List<Item> get items => _itemId.map((id) => _catalog.getById(id)).toList();

//Get total price of added product
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);


}

class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);
  @override
  perform() {
    store!.cart._itemId.add(item.id);
  }
}


class RemoveMutation extends VxMutation<MyStore> {
  final Item item;

  RemoveMutation(this.item);
  @override
  perform() {
    store!.cart._itemId.remove(item.id);
  }
}
