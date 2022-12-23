import 'package:delmart/shared/theme.dart';
import 'package:delmart/ui/pages/login.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: ListView(children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 27),
                    child: Image.asset(
                        'assets/images/illustration_background.png'),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Image.asset('assets/images/illustration.png'),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 17),
                child: const Text(
                  "Welcome to DelMart!\nGrocery Applications",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff303733),
                  ),
                ),
              ),
              Container(
                width: 247,
                // margin left 64, top 0, right 64, bottom 0
                margin: const EdgeInsets.symmetric(horizontal: 64),
                child: const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return const LoginPage();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: orange,
                    minimumSize: const Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text("NEXT"),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
