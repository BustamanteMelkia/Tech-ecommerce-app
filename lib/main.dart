import 'package:ecommerce_app/screens/cart.dart';
import 'package:ecommerce_app/screens/loginscreen.dart';
import 'package:ecommerce_app/screens/no_favorites.dart';
import 'package:ecommerce_app/screens/no_connection.dart';
import 'package:ecommerce_app/screens/no_history.dart';
import 'package:ecommerce_app/screens/profile.dart';
import 'package:ecommerce_app/screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xFF5956E9),
        primaryColorLight: Colors.white,
        fontFamily: 'Raleway',
      ),
      home: Cart(),
    );
  }
}
