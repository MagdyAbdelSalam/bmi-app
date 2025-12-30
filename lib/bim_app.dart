import 'package:bim_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class BimApp extends StatelessWidget {
  const BimApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff1C2135),
        iconTheme: IconThemeData(color: Colors.white),
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color(0xff24263B),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
