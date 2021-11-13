import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home.dart';
import 'package:flutter_catalog/widgets/themes.dart';
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
     theme: MyTheme.lightTheme(context),

    // for dark theme properties
    darkTheme: MyTheme.darkTheme(context),
    initialRoute: MyRoutes.homeRoutes,
    routes: {
      "/":(context)=>LoginPage(),
      MyRoutes.homeRoutes:(context)=> HomePage(),
      MyRoutes.loginRoutes:(context)=> LoginPage(),
    },
    );
  }
}
