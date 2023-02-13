import 'package:flutter/material.dart';
import 'package:nectar/screens/splash_screen.dart';

void main() {
  runApp( MaterialApp(
    initialRoute: '/loginScreen',
    debugShowCheckedModeBanner: false,
    routes: {
      '/loginScreen' :(context) => const SplashScreen()
    },
  ));
}
