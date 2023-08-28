import 'package:flutter/material.dart';
import 'package:frist_app/lesson_Navigation/route.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController controller = TextEditingController();

  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Login'),
        ),
        body: Center(
          child: Column(
            children: [
              TextField(
                controller: controller,
              ),
              TextField(),
              ElevatedButton(
                onPressed: () {
                  var ouput = controller.text;
                  print('$ouput');
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const MyHomePageNavi()),
                  // );
                  Navigator.pushNamed(
                    context,
                    NamedRoute.homePageName,
                    arguments: ouput,
                  );
                },
                child: const Text('Login Page'),
              )
            ],
          ),
        ));
  }
}
