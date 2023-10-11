import 'package:flutter/material.dart';

class AppAnimatedAlign extends StatefulWidget {
  const AppAnimatedAlign({super.key});
  @override
  State<AppAnimatedAlign> createState() => AppAnimatedAlignState();
}

class AppAnimatedAlignState extends State<AppAnimatedAlign> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
          child: Container(
        width: 150.0,
        height: 150.0,
        color: Colors.red,
        child: AnimatedAlign(
          alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
          duration: const Duration(seconds: 3),
          curve: Curves.fastOutSlowIn,
          child: const FlutterLogo(size: 50.0),
        ),
      )),
    );
  }
}
