import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
   final int days= 7;
  final String name= "flutter";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text(" Flutter Catalog"),
),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of $name")
          ),
      ),
      drawer: MyDrawer(),
    );
  }
}