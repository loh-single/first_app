import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'Menu',
            style: TextStyle(color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.black,
            size: 40,
          )
        ],
      ),
      body: Container(
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.all(150),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
              width: 20,
              color: Colors.black,
            )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/image/tim.jpg',
                  height: 150,
                  width: 300,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '123',
                          style: TextStyle(color: Colors.purple),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text('345', style: TextStyle(color: Colors.purple))
                      ],
                    ),
                    Text('456', style: TextStyle(color: Colors.purple))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
