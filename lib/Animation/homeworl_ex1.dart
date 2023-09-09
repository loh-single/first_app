import 'package:flutter/material.dart';
import 'package:frist_app/lession_form_navidi/homework/register_page.dart';

import 'package:frist_app/lesson_Navigation/dialogs.dart';

class HomeWorkEx1 extends StatefulWidget {
  const HomeWorkEx1({super.key});
  @override
  State<HomeWorkEx1> createState() => HomeWorkEx1Sate();
}

class HomeWorkEx1Sate extends State<HomeWorkEx1> {
  bool _isRemember = false;
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Homework Form and Navidition'),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: Colors.accents,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
        ));
  }
}
