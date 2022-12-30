import 'package:delmart/ui/pages/forgot.dart';
import 'package:delmart/ui/pages/home.dart';
import 'package:delmart/ui/pages/login.dart';
import 'package:delmart/ui/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:delmart/ui/pages/splash.dart';

Future<void> main() async => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
      routes: {
        '/splash': (context) => const SplashPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/forgot': (context) => const ForgotPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
