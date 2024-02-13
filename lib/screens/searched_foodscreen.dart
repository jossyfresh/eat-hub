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
import 'package:eathub/Providers/cart_provider.dart';
import 'package:eathub/widgets/fav_appbar.dart';
import 'package:eathub/widgets/searched_appbar.dart';

class SearchedScreen extends StatefulWidget {
  const SearchedScreen({super.key});
  @override
  State<SearchedScreen> createState() => _SearchedScreenState();
}

class _SearchedScreenState extends State<SearchedScreen> {
  @override
  Widget build(BuildContext context) {
    final CartsProvider = Provider.of<CartProvider>(context);
    String searchQuery = CartsProvider.searchquery;
    List<Food> Searched = foods
        .where((element) => element.name.toLowerCase().contains(searchQuery))
        .toList();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SearchAppBar(),
                const SizedBox(height: 20),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  // only send if food[index].type == "dinner"
                  itemCount: Searched.length,
                  itemBuilder: (context, index) {
                    return FoodCard(food: Searched[index]);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
