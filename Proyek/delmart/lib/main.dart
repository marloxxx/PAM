import 'package:delmart/ui/pages/forgot.dart';
import 'package:delmart/ui/pages/home.dart';
import 'package:delmart/ui/pages/search_product.dart';
import 'package:delmart/ui/pages/filter_product.dart';
import 'package:delmart/ui/pages/category_product.dart';
import 'package:delmart/ui/pages/credit.dart';
import 'package:delmart/ui/pages/login.dart';
import 'package:delmart/ui/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:delmart/ui/pages/splash.dart';
import 'package:delmart/ui/pages/product_detail.dart';
import 'package:delmart/ui/pages/cart.dart';
import 'package:delmart/ui/pages/room.dart';
import 'package:delmart/ui/pages/room_detail.dart';
import 'package:delmart/ui/pages/profile.dart';

Future<void> main() async => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/splash': (context) => const SplashPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/forgot': (context) => const ForgotPage(),
        '/home': (context) => const HomePage(),
        '/search_product': (context) => const SearchProductPage(),
        '/filter_product': (context) => const FilterProductPage(),
        '/category_product': (context) => const CategoryProductPage(),
        '/product_detail': (context) => const ProductDetail(),
        '/credit': (context) => const CreditPage(),
        '/room': (context) => const RoomPage(),
        '/room_detail': (context) => const RoomDetailPage(),
        '/cart': (context) => const CartPage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
