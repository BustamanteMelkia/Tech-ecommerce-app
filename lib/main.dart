import 'package:ecommerce_app/screens/no-favorites.dart';
import 'package:ecommerce_app/screens/no_connection.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xFF5956E9),
        primaryColorLight: Colors.white,
        fontFamily: 'Raleway',
      ),
      home: const NoFavorites(),
    );
  }
}
