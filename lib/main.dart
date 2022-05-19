import 'package:flutter/material.dart';
import 'package:kpec/view/login_page.dart';
import 'package:kpec/view/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LOGIN TEST',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/login",
      routes: {
        "/login": (context) => LoginPage(),
        "/main": (context) => MainPage(),
      },
      home: LoginPage(),
    );
  }
}