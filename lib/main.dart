import 'package:app_finanzas_personales/pages/home_page.dart';
import 'package:app_finanzas_personales/pages/login_page.dart';
import 'package:app_finanzas_personales/pages/register_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "login",
      debugShowCheckedModeBanner: false,
      routes: {

        //'/': (context) => FirstScreen(),
        'login': (context) => LoginPage(),
        'summary': (context) => SummaryPage(),
        'register':(context) => RegisterPage(),


      },
    );
  }
}