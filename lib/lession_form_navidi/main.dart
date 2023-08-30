import 'package:flutter/material.dart';

import 'login_page.dart';

void main() {
  return runApp(const Form());
}

class Form extends StatelessWidget {
  const Form({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const LoginPageLesForm(),
    );
  }
}
