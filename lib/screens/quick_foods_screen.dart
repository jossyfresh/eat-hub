import 'package:flutter/material.dart';
import 'package:eathub/models/food.dart';
import 'package:eathub/widgets/food_card.dart';
import 'package:eathub/widgets/quick_screen_appbar.dart';
import 'package:iconsax/iconsax.dart';

class QuickFoodsScreen extends StatefulWidget {
  const QuickFoodsScreen({super.key});

  @override
  State<QuickFoodsScreen> createState() => _QuickFoodsScreenState();
}

class _QuickFoodsScreenState extends State<QuickFoodsScreen> {
  List<Food> bf = foods.where((food) => food.Type == "Breakfast").toList();

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
                const QuickScreenAppbar(),
                const SizedBox(height: 20),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) {
                    return FoodCard(food: bf[index]);
                  },
                  itemCount: bf.length,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
