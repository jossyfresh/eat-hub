import 'package:flutter/material.dart';
import 'package:eathub/constants.dart';
import 'package:eathub/models/category.dart';
import 'package:eathub/models/food.dart';
import 'package:eathub/widgets/categories.dart';
import 'package:eathub/widgets/home_appbar.dart';
import 'package:eathub/widgets/home_search_bar.dart';
import 'package:eathub/widgets/quick_and_fast_list.dart';
import 'package:eathub/widgets/lunch_list.dart';
import 'package:eathub/widgets/dinner_list.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String currentCat = "All";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeAppbar(),
                const SizedBox(height: 20),
                HomeSearchBar(),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                          "assets/images/Screenshot from 2024-02-11 01-31-41.png"),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Categories(currentCat: currentCat),
                const SizedBox(height: 20),
                const QuickAndFastList(),
                const LunchList(),
                const DinnerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
