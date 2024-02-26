import 'package:flutter/material.dart';
import 'package:mvvm/di/serviceLocator.dart';
import 'package:mvvm/view/HomeScreen.dart';

void main() {
  initServiceLocator();
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScren(),
    );
  }
}
