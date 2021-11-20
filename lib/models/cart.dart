import 'package:flutter_catalog/models/catolog.dart';

class CartModel{
  static final cartModel = CartModel._internal();
  CartModel. _internal();

  factory CartModel() =>cartModel;
  //collection od IDs Or store Id of each item
late CatalogModel _catalog;

final List<int> _itemId=[];

//Get catalog
CatalogModel get catalog=> _catalog;

//set catalog
set catalog(CatalogModel newCatalog){
  assert(newCatalog !=null);
  _catalog =newCatalog;
}

//Get item in the cart page
List<Item> get items => _itemId.map((id) => _catalog.getById(id)).toList();

//Get total price of added product
num get totalPrice => items.fold(0, (total, current) => total+current.price);

// Add Item to cart
void add(Item item){
  _itemId.add(item.id);
}

//Remove Item from cart
void remove(Item item){
  _itemId.remove(item.id);

}
}