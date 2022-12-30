import 'package:delmart/ui/widgets/custom_text_form_field.dart';
import 'package:delmart/ui/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'dart:core';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:delmart/shared/theme.dart';

class RoomPage extends StatefulWidget {
  const RoomPage({super.key});

  @override
  State<RoomPage> createState() => _RoomPageState();
}

// this is the room page
class _RoomPageState extends State<RoomPage> {
  String username = 'User';
  String greeting = 'Good Morning';

  // assign greeting based on the current time
  _RoomPageState() {
    final hour = DateTime.now().hour;
    if (hour < 12) {
      greeting = 'Good Morning';
    } else if (hour < 17) {
      greeting = 'Good Afternoon';
    } else if (hour < 20) {
      greeting = 'Good Evening';
    } else {
      greeting = 'Good Night';
    }
  }

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello $username',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            greeting,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      // icon notification bell with how many notifications
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          const FaIcon(FontAwesomeIcons.bell).icon,
                          color: Colors.black,
                        ),
                      ),
                      // profile picture
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: const CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              AssetImage('assets/images/blank.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                // search bar
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: CustomTextFormField(
                      hintText: 'Search',
                      prefixIcon: Icon(
                        Icons.search,
                        color: softGray,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      controller: _searchController,
                      onSaved: (String? value) =>
                          _searchController.text = value!,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'List Ruangan',
                      style: TextStyle(
                        color: dark,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // grid view
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: GridView.builder(
                    itemCount: 10,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/room_detail');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey.withOpacity(0.5),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // image room
                              // Image.asset(
                              //   'assets/images/room.png',
                              //   width: 100,
                              //   height: 100,
                              // ),
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(
                                  Icons.hotel,
                                  color: softGray,
                                  size: 50,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'Room 1',
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
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const Navbar(),
      ),
    );
  }
}
