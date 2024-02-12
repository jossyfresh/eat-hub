import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eathub/models/food.dart';
import 'package:eathub/widgets/food_card.dart';
import 'package:eathub/widgets/lunch_list.dart';
import 'package:eathub/widgets/dinner_list_appbar.dart';
import 'package:eathub/widgets/quick_screen_appbar.dart';
import 'package:eathub/widgets/lunch_list_appbar.dart';
import 'package:iconsax/iconsax.dart';

class DinnerListScreen extends StatefulWidget {
  const DinnerListScreen({super.key});
  // filter food with type == "dinner"

  @override
  State<DinnerListScreen> createState() => _DinnerListScreenState();
}

class _DinnerListScreenState extends State<DinnerListScreen> {
  List<Food> dinner = foods.where((food) => food.Type == "Dinner").toList();
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
                const DinnerListAppBar(),
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
                  itemCount: dinner.length,
                  itemBuilder: (context, index) {
                    return FoodCard(food: dinner[index]);
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
