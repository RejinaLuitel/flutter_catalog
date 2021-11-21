import 'package:flutter/material.dart';
import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/pages/cart.dart';
import 'package:flutter_catalog/pages/home.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'pages/login.dart';
import 'utils/routes.dart';


void main() {
  runApp(VxState(
    store: MyStore(),

    child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //for light theme
      //themeMode: ThemeMode.dark for dark
     themeMode: ThemeMode.system,
     theme: MyTheme.lightTheme(context),
    // for dark theme properties
    darkTheme: MyTheme.darkTheme(context),
    initialRoute: MyRoutes.loginRoutes,
    routes: {
      "/":(context)=>LoginPage(),
      MyRoutes.homeRoutes:(context)=> HomePage(),
      MyRoutes.loginRoutes:(context)=> LoginPage(),
      MyRoutes.cartRoute:(context)=> CartPage(),
    },
    );
  }
}
