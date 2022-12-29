import 'package:delmart/ui/widgets/custom_button.dart';
import 'package:delmart/ui/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:delmart/ui/widgets/custom_text_form_field.dart';
import 'package:delmart/shared/theme.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                                          color: orange,
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
                              'John Doe',
                              style: TextStyle(
                                color: dark,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      margin: const EdgeInsets.only(
                                        left: 20,
                                        top: 20,
                                      ),
                                      decoration: BoxDecoration(
                                        color: orange,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(
                                        Icons.person,
                                        color: white,
                                        size: 30,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                        left: 20,
                                        top: 20,
                                      ),
                                      child: CustomButton(
                                        child: Text(
                                          'Account Info',
                                          style: TextStyle(
                                            color: dark,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 20,
                                    top: 20,
                                    right: 20,
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: dark,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                            // my orders
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      margin: const EdgeInsets.only(
                                        left: 20,
                                        top: 20,
                                      ),
                                      decoration: BoxDecoration(
                                        color: orange,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(
                                        Icons.shopping_cart,
                                        color: white,
                                        size: 30,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                        left: 20,
                                        top: 20,
                                      ),
                                      child: CustomButton(
                                        child: Text(
                                          'My Orders',
                                          style: TextStyle(
                                            color: dark,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 20,
                                    top: 20,
                                    right: 20,
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: dark,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                            // my requests
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      margin: const EdgeInsets.only(
                                        left: 20,
                                        top: 20,
                                      ),
                                      decoration: BoxDecoration(
                                        color: orange,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(
                                        Icons.bookmark,
                                        color: white,
                                        size: 30,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                        left: 20,
                                        top: 20,
                                      ),
                                      child: CustomButton(
                                        child: Text(
                                          'My Requests',
                                          style: TextStyle(
                                            color: dark,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 20,
                                    top: 20,
                                    right: 20,
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: dark,
                                    size: 20,
                                  ),
                                ),
                              ],
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
                          children: [
                            // list menu
                            // settings
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      margin: const EdgeInsets.only(
                                        left: 20,
                                        top: 20,
                                      ),
                                      decoration: BoxDecoration(
                                        color: orange,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(
                                        Icons.settings,
                                        color: white,
                                        size: 30,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                        left: 20,
                                        top: 20,
                                      ),
                                      child: CustomButton(
                                        child: Text(
                                          'Settings',
                                          style: TextStyle(
                                            color: dark,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 20,
                                    top: 20,
                                    right: 20,
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: dark,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                            // help center
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      margin: const EdgeInsets.only(
                                        left: 20,
                                        top: 20,
                                      ),
                                      decoration: BoxDecoration(
                                        color: orange,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(
                                        Icons.help,
                                        color: white,
                                        size: 30,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                        left: 20,
                                        top: 20,
                                      ),
                                      child: CustomButton(
                                        child: Text(
                                          'Help Center',
                                          style: TextStyle(
                                            color: dark,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 20,
                                    top: 20,
                                    right: 20,
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: dark,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                            // contact us
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      margin: const EdgeInsets.only(
                                        left: 20,
                                        top: 20,
                                      ),
                                      decoration: BoxDecoration(
                                        color: orange,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(
                                        Icons.phone,
                                        color: white,
                                        size: 30,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                        left: 20,
                                        top: 20,
                                      ),
                                      child: CustomButton(
                                        child: Text(
                                          'Contact Us',
                                          style: TextStyle(
                                            color: dark,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 20,
                                    top: 20,
                                    right: 20,
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: dark,
                                    size: 20,
                                  ),
                                ),
                              ],
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
                          children: [
                            // list menu
                            // logout
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      margin: const EdgeInsets.only(
                                        left: 20,
                                        top: 20,
                                      ),
                                      decoration: BoxDecoration(
                                        color: orange,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(
                                        Icons.logout,
                                        color: white,
                                        size: 30,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                        left: 20,
                                        top: 20,
                                      ),
                                      child: CustomButton(
                                        child: Text(
                                          'Logout',
                                          style: TextStyle(
                                            color: dark,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 20,
                                    top: 20,
                                    right: 20,
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: dark,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
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
