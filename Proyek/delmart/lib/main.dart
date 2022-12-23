import 'package:flutter/material.dart';
import 'package:delmart/ui/pages/splash.dart';

Future<void> main() async => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SplashPage(),
        ),
      ),
    );
  }
}
