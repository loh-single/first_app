import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class Food {
  final String title;
  final String ngay;
  final String gia;
  Food(this.title, this.ngay, this.gia);
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final List<Food> _listItem = [
    Food('mon so 1', '14/12', '5000'),
    Food('mon so 2', '18/9', '6000'),
    Food('mon so 3', '30/7', '2000'),
    Food('mon so 4', '15/2', '9000'),
    Food('mon so 5', '15/2', '9000'),
    Food('mon so 6', '15/2', '9000'),
    Food('mon so 7', '15/2', '9000'),
    Food('mon so 8', '15/2', '9000'),
    Food('mon so 9', '15/2', '9000'),
    Food('mon so 10', '15/2', '9000'),
    Food('mon so 11', '15/2', '9000'),
    Food('mon so 12', '15/2', '9000'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
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
        title: const Text('Login'),
        backgroundColor: Colors.orange,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Text(
                'Notifications',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) =>
                      notificationItem(context, _listItem[index]),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                  itemCount: _listItem.length),
            )
          ],
        ),
      ),
    );
  }

  Widget notificationItem(BuildContext context, Food item) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Image.asset(
              'assets/image/logo.png',
              //height: 20,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                            text: "Reservation",
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                          text: '${item.title}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        const TextSpan(
                          text: ' has ben deposited successfully',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item.ngay,
                        style: const TextStyle(color: Colors.grey),
                      ),
                      const Icon(Icons.chevron_right),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
