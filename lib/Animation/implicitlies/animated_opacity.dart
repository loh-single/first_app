import 'package:flutter/material.dart';

class AppAnimatedOpacity extends StatefulWidget {
  const AppAnimatedOpacity({super.key});
  @override
  State<AppAnimatedOpacity> createState() => AppAnimatedOpacityState();
}

class AppAnimatedOpacityState extends State<AppAnimatedOpacity> {
  double opacityLevel = 1.0;
  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _changeOpacity();
      },
      child: Container(
        width: 200.0,
        height: 100.0,
        color: Colors.red[300],
        child: AnimatedOpacity(
          opacity: opacityLevel,
          duration: const Duration(seconds: 3),
          curve: Curves.fastOutSlowIn,
          child: const FlutterLogo(size: 50.0),
        ),
      ),
    );
  }
}
