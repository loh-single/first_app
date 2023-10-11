import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './login.dart';

void main() async {
  await SharedPreferences.getInstance();
  return runApp(const Form());
}

class Form extends StatelessWidget {
  const Form({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homework Form and Navidition',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Login(),
    );
  }
}
