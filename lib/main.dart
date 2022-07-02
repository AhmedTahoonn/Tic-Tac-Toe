import 'package:flutter/material.dart';
import 'package:xoo/modules/splash%20screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        primaryColor: Colors.white,
        primaryColorLight: Colors.white,
        backgroundColor: Colors.white,
        scaffoldBackgroundColor:Colors.grey[900],

      ),
      debugShowCheckedModeBanner: false,
      home: splashScreen(),
    );
  }
}

