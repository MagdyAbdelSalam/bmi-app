import 'package:bim_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class BimApp extends StatelessWidget {
  const BimApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
