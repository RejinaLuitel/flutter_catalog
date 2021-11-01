import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home.dart';
import 'package: flutter_catalog/login.dart'

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //for light theme
      //themeMode: ThemeMode.dark for dark
     themeMode: ThemeMode.light,
     theme: ThemeData(primarySwatch: Colors.deepPurple),
    // for dark theme properties
    darkTheme: ThemeData(
      brightness: Brightness.dark,
    ),
    initialRoute: "/",
    routes: {
      "/":(context)=>LoginPage(),
      "/home":(context)=> HomePage(),
      "/login":(context)=> LoginPage(),
    },
    );
  }
}