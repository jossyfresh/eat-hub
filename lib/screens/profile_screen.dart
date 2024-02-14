import 'package:eathub/Providers/user_provider.dart';
import 'package:eathub/widgets/profile_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eathub/models/food.dart';
import 'package:eathub/widgets/food_card.dart';
import 'package:eathub/widgets/lunch_list.dart';
import 'package:eathub/widgets/dinner_list_appbar.dart';
import 'package:eathub/widgets/quick_screen_appbar.dart';
import 'package:eathub/widgets/lunch_list_appbar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:eathub/Providers/fav_provider.dart';
import 'package:eathub/widgets/fav_appbar.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final UsersProvider = Provider.of<UserProvider>(context);

    void logout() {
      FirebaseAuth.instance.signOut();
      UsersProvider.clearUser();
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // app bar
                const ProfileAppBar(),
                const SizedBox(height: 20),
                // Avatar and name
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            AssetImage("assets/images/sandwich.jpeg"),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "John Doe",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "jossyfresh2002@gmail.com",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // clickable menu
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 4),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 236, 237, 238),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 16.0, bottom: 16.0, left: 20, right: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.person_2_outlined,
                                    color: Colors.grey[700], size: 30),
                                const SizedBox(width: 20),
                                Text(
                                  "My Account",
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Icon(Icons.chevron_right_outlined,
                                color: Colors.grey[700], size: 25),
                          ]),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 4),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 236, 237, 238),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 16.0, bottom: 16.0, left: 20, right: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.person_2_outlined,
                                    color: Colors.grey[700], size: 30),
                                const SizedBox(width: 20),
                                Text(
                                  "Cart",
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Icon(Icons.chevron_right_outlined,
                                color: Colors.grey[700], size: 25),
                          ]),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 4),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 236, 237, 238),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 16.0, bottom: 16.0, left: 20, right: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.person_2_outlined,
                                    color: Colors.grey[700], size: 30),
                                const SizedBox(width: 20),
                                Text(
                                  "My Favourites",
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Icon(Icons.chevron_right_outlined,
                                color: Colors.grey[700], size: 25),
                          ]),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 4),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 236, 237, 238),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 16.0, bottom: 16.0, left: 20, right: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.person_2_outlined,
                                    color: Colors.grey[700], size: 30),
                                const SizedBox(width: 20),
                                Text(
                                  "Order History",
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Icon(Icons.chevron_right_outlined,
                                color: Colors.grey[700], size: 25),
                          ]),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 4),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 236, 237, 238),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text("Logout"),
                              content: const Text(
                                  "Are you sure you want to logout?"),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text("Cancel"),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    // loading screen
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return const Center(
                                          child: CircularProgressIndicator(),
                                        );
                                      },
                                    );
                                    logout();
                                  },
                                  child: const Text("Logout"),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, bottom: 16.0, left: 20, right: 20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.person_2_outlined,
                                      color: Colors.grey[700], size: 30),
                                  const SizedBox(width: 20),
                                  Text(
                                    "Logout",
                                    style: TextStyle(
                                        color: Colors.grey[600],
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Icon(Icons.chevron_right_outlined,
                                  color: Colors.grey[700], size: 25),
                            ]),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
