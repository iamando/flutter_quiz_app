import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/screens/home_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Quiz App',
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}
