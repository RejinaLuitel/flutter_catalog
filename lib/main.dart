import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/login.dart';
import 'utils/routes.dart';

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
     theme: ThemeData(
       primarySwatch: Colors.deepPurple,
       fontFamily: GoogleFonts.lato().fontFamily,
       //primaryTextTheme: GoogleFonts.latoTextTheme(),
     ),

    // for dark theme properties
    darkTheme: ThemeData(
      brightness: Brightness.dark,
    ),
    initialRoute: "/",
    routes: {
      "/":(context)=>LoginPage(),
      MyRoutes.homeRoutes:(context)=> HomePage(),
      MyRoutes.loginRoutes:(context)=> LoginPage(),
    },
    );
  }
}
