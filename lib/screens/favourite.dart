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

class FavListScreen extends StatefulWidget {
  const FavListScreen({super.key});
  // filter food with type == "dinner"

  @override
  State<FavListScreen> createState() => _FavListScreenState();
}

class _FavListScreenState extends State<FavListScreen> {
  @override
  Widget build(BuildContext context) {
    final FavsProvider = Provider.of<FavProvider>(context);
    List<Food> Favourite = FavsProvider.favFoods;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FavAppBar(),
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
                  itemCount: Favourite.length,
                  itemBuilder: (context, index) {
                    return FoodCard(food: Favourite[index]);
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
