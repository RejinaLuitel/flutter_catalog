import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catolog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widgets.dart';

class HomePage extends StatelessWidget {
   final int days= 7;
  final String name= "flutter";

  @override
  Widget build(BuildContext context) {
   // ignore: unused_local_variable
   final dummyList= List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
appBar: AppBar(
  title: Text(" Flutter Catalog"),
),
      body: ListView.builder(
        padding: EdgeInsets.all(15.0),
        itemCount: dummyList.length,
        itemBuilder: (context, index){
          return ItemWidget(
            item: dummyList[index],
           
          );
        }
      ),
      drawer: MyDrawer(),
    );
  }
}