import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/models/catolog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 7;

  final String name = "flutter";
  @override
  void initState() {
   
    super.initState();
    loadData();
  }

  loadData() async{
    await Future.delayed(Duration(seconds: 2));
    final catalogJson= 
    await rootBundle.loadString("assets/files/catalog.json");
    final decodeData= jsonDecode(catalogJson);
    var productsData= decodeData["products"];
    CatalogModel.items= List.from(productsData)
    .map<Item>((item) => Item.fromMap(item))
    .toList();
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Flutter Catalog"),
      ),
      
      body: Padding(
          padding: const EdgeInsets.all(15.0),
          // ignore: unnecessary_null_comparison
          child:(CatalogModel.items!=null && CatalogModel.items.isNotEmpty)
          ? GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
            
    
          itemBuilder: (context, index){
                final item= CatalogModel.items[index];
           return Card(
             clipBehavior: Clip.antiAlias,
           shape: RoundedRectangleBorder(

             borderRadius: BorderRadius.circular(10)
           ),
             child: GridTile(
               
               child: Image.network(item.image)));
          }  ,
           itemCount: CatalogModel.items.length,
            )
          
          :Center(
              child:CircularProgressIndicator(),
          ),
      ),
      drawer: MyDrawer(),
    );
  }
}
