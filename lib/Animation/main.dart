import 'package:flutter/material.dart';
import 'package:frist_app/Animation/animations_pages.dart';

void main() {
  return runApp(const HomeWork());
}

class HomeWork extends StatelessWidget {
  const HomeWork({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homework Form and Navidition',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const AnimationPage(),
    );
  }
}
