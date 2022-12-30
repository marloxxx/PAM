import 'package:delmart/ui/widgets/custom_button.dart';
import 'package:delmart/ui/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:delmart/shared/theme.dart';
import 'package:delmart/ui/widgets/card_item_menu.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String _name = 'Theo Jelek';
  String _email = 'theojelek@gmail.com';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  // set background color F3F6FB
                  Container(
                    height: MediaQuery.of(context).size.height,
                    color: const Color(0xFFF3F6FB),
                  ),
                  const SizedBox(
                    child: Image(
                      image: AssetImage('assets/images/bg.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            // circle avatar image and pencil icon
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                padding: const EdgeInsets.only(top: 20),
                                child: Stack(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(left: 20),
                                      width: 130,
                                      height: 130,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: const CircleAvatar(
                                        radius: 50,
                                        backgroundImage: AssetImage(
                                          'assets/images/blank.png',
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          gradient: gradient,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          border: Border.all(
                                            color: white,
                                            width: 2,
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.edit,
                                          color: white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              _name,
                              style: TextStyle(
                                color: white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              _email,
                              style: TextStyle(
                                color: white,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          children: [
                            // list menu
                            // account info
                            const CardItemMenu(
                              icon: Icons.person,
                              title: 'Account Info',
                            ),
                            // my orders
                            CardItemMenu(
                              onTap: () {
                                Navigator.pushNamed(context, '/my_orders');
                              },
                              icon: Icons.shopping_cart,
                              title: 'My Orders',
                            ),
                            // my requests
                            CardItemMenu(
                              onTap: () {
                                Navigator.pushNamed(context, '/my_requests');
                              },
                              icon: Icons.bookmark,
                              title: 'My Requests',
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          children: const [
                            // list menu
                            // settings
                            CardItemMenu(
                              icon: Icons.settings,
                              title: 'Settings',
                            ),
                            // help center
                            CardItemMenu(
                              icon: Icons.help,
                              title: 'Help Center',
                            ),
                            // contact us
                            CardItemMenu(
                              icon: Icons.phone,
                              title: 'Contact Us',
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          children: const [
                            // list menu
                            // logout
                            CardItemMenu(
                              icon: Icons.logout,
                              title: 'Logout',
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: const Navbar(),
      ),
    );
  }
}
