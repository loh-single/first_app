import 'package:flutter/material.dart';
import 'package:frist_app/lesson_Navigation/dialogs.dart';
import 'package:frist_app/lesson_Navigation/home_page.dart';
import 'package:frist_app/lesson_Navigation/login_page.dart';

class OverlayPage extends StatelessWidget {
  const OverlayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => DialogsCustom.alert(context));
                },
                child: const Text('Open Alert')),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => DialogsCustom.simple(context));
                },
                child: const Text('Open Simple')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyHomePageNavi(),
                          fullscreenDialog: true));
                },
                child: const Text('Open Fullscreen Dialog')),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(DialogsCustom.snackBar(context, ''));
                  //Navigator.pop(context);
                },
                child: const Text('Open SnackBar Dialog'))
          ],
        ),
      ),
    );
  }
}
