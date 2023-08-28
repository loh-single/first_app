import 'package:flutter/material.dart';

class MyHomePageTen extends StatefulWidget {
  const MyHomePageTen({
    super.key,
  });

  @override
  State<MyHomePageTen> createState() => _MyHomePageTenState();
}

class _MyHomePageTenState extends State<MyHomePageTen> {
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
      //backgroundColor: Image.asset('assets/image/tim.jpg'),

      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          //color: Colors.red,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 187, 19, 123),
            Color.fromARGB(255, 138, 17, 175)
          ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Nhat Thien Huong',
                      style: TextStyle(fontSize: 50))),
            ],
          ),
        ),
      ),
    );
  }
}
