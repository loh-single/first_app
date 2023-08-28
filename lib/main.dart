import 'package:flutter/material.dart';

import 'package:frist_app/lesson_Navigation/home_page.dart';
import 'package:frist_app/lesson_Navigation/Login_page.dart';
import 'package:frist_app/lesson_Navigation/overlay_page.dart';
import 'package:frist_app/lesson_Navigation/route.dart';

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
      home: const LoginPage(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case NamedRoute.loginPageName:
            {
              return MaterialPageRoute(
                  builder: ((context) => const LoginPage()));
            }

          case NamedRoute.homePageName:
            {
              var dataFromLogin = settings.arguments as String?;
              return MaterialPageRoute(
                  builder: ((context) =>
                      MyHomePageNavi(dataFromLogin: dataFromLogin)));
            }
          case NamedRoute.overlayPage:
            {
              var dataFromLogin = settings.arguments as String?;
              return MaterialPageRoute(
                  builder: ((context) => const OverlayPage()));
            }
        }
      },
      // routes: {
      //   NamedRoute.loginPageName: (context) => const MyHomePageNavi(),
      //   NamedRoute.homePageName: (context) => const NavigationState(),
      // },
    );
  }
}
