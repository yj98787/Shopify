import 'package:flutter/material.dart';
// import 'Signup_page.dart';
// import 'Home_page.dart';
// import 'Login_page.dart';
import 'SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}


