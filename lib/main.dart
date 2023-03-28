import 'package:flutter/material.dart';
import 'package:jogue_dados/HomeScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (_) => HomeScreen(),
    },
  ));
}
