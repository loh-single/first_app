import 'package:flutter/material.dart';

class AppAnimatedContainer extends StatefulWidget {
  const AppAnimatedContainer({super.key});
  @override
  State<AppAnimatedContainer> createState() => AppAnimatedContainerState();
}

class AppAnimatedContainerState extends State<AppAnimatedContainer> {
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
          child: AnimatedContainer(
        width: selected ? 100.0 : 200.0,
        height: selected ? 200.0 : 100.0,
        color: selected ? Colors.blue : Colors.red,
        alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
        duration: const Duration(seconds: 3),
        curve: Curves.fastOutSlowIn,
        child: const FlutterLogo(size: 50.0),
      )),
    );
  }
}
