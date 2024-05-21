import 'package:flutter/material.dart';

import 'views/loginscreen.dart';
import 'views/foodscreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restoran App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
      routes: {
        '/food': (context) =>  FoodScreen(),
       
      },
    );
  }
}
