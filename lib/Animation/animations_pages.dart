import 'package:flutter/material.dart';
import 'package:frist_app/Animation/implicitlies/animated_align.dart';
import 'package:frist_app/Animation/implicitlies/animated_container.dart';
import 'package:frist_app/Animation/implicitlies/animated_opacity.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});
  @override
  State<AnimationPage> createState() => AnimationPageState();
}

class AnimationPageState extends State<AnimationPage> {
  Widget _animateImplicitlyExample = Container(
    width: 150,
    height: 150,
    color: Colors.red,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'Implicitly',
                style: TextStyle(fontSize: 35),
              ),
              Wrap(spacing: 8.0, children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _animateImplicitlyExample = const AppAnimatedAlign();
                    });
                  },
                  child: const Text('run AnimatedAlign'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _animateImplicitlyExample = const AppAnimatedContainer();
                    });
                  },
                  child: const Text('run AnimatedContainer'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _animateImplicitlyExample = const AppAnimatedOpacity();
                    });
                  },
                  child: const Text('run AnimatedOpacity'),
                ),
                _animateImplicitlyExample,
              ])
            ],
          ),
        ),
      ),
    );
  }
}
