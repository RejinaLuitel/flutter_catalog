import 'package:flutter_catalog/models/cart.dart';
import 'package:flutter_catalog/models/catolog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore{
   late CatalogModel catalog;
  late  CartModel cart;

    MyStore(){
      catalog= CatalogModel();
      cart = CartModel();
      cart.catalog =catalog;
    }
}

