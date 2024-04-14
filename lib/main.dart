import 'package:flutter/material.dart';
import 'package:app1/Home_Screen.dart';

main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }

}



