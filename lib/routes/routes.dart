import 'package:ecommerce_app/screens/checkout.dart';
import 'package:ecommerce_app/screens/homescreen.dart';
import 'package:ecommerce_app/screens/loginscreen.dart';
import 'package:ecommerce_app/screens/no_favorites.dart';
import 'package:ecommerce_app/screens/splashscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => Home(),
    'splash': (BuildContext contex) => Splash(),
    'auth': (BuildContext contex) => Login(),
    'favorites': (BuildContext contex) => NoFavorites(),
    'checkout': (BuildContext contex) => Checkout(),
  };
}
