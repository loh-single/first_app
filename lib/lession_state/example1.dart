import 'dart:math';

import 'package:flutter/material.dart';
import 'package:frist_app/lession_state/Huong.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  Color _color = Colors.red;
  bool _isLike = false;

  static const _colorList = <Color>[
    Colors.red,
    Colors.orange,
    Colors.blue,
    Colors.green,
    Colors.pink,
    Colors.brown,
    Colors.yellow,
    Colors.purple,
  ];

  void _incrementCounter() {
    var i = Random().nextInt(8);
    setState(() {
      _counter++;
      _color = _colorList[i];
    });
  }

  var a = 'Nhat Thien Huong';
  void ten() {
    bool i = false;

    setState(() {
      if (i = !i) {
        print(a);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 32,
        ),
        actions: const [
          Padding(
              padding: EdgeInsets.all(26),
              child: Text(
                'Mark as read',
                style: TextStyle(color: Color.fromARGB(255, 10, 158, 146)),
              )),
        ],
        backgroundColor: Colors.red,
        elevation: 0.0,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  _isLike = !_isLike;
                  // if (_isLike = !_isLike) {
                  //   ten();
                  // }
                });
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyHomePageTen()));
              },
              child: Icon(_isLike == true
                  ? Icons.favorite
                  : Icons.favorite_border_outlined),
            ),
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text('$_counter', style: const TextStyle(fontSize: 50)),
            //   ],
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MyHomePageTen()));
          ten();
        },
        child: const Icon(Icons.favorite),
      ),
    );
  }
}
