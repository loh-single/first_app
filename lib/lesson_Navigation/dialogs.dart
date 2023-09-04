import 'package:flutter/material.dart';
import 'package:frist_app/lesson_Navigation/login_page.dart';

class DialogsCustom {
  static Widget alert(BuildContext context) {
    return AlertDialog(
      title: const Text('Bạn đã bấm vào Alert'),
      content: const Text('Alert là dialogs'),
      actions: [
        ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(snackBar(context, ''));
            Navigator.pop(context);
          },
          child: const Text('oke'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('cancle'),
        ),
      ],
    );
  }

  static Widget simple(BuildContext context) {
    return SimpleDialog(
      children: [
        const Icon(Icons.alarm),
        const Text('Dậy diiiiii'),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('close'))
      ],
    );
  }

  // static Widget fullSreenDialog(BuildContext context) {
  //   return Navigator.push(
  //       context, MaterialPageRoute(builder: (context) => const LoginPage()));
  // }

  static snackBar(BuildContext context, String? s) {
    return SnackBar(
      content: Text('$s'),
    );
  }
}
