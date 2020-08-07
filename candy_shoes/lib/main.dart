import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Candy Shoes',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CandyShoesHome(),
    );
  }
}
