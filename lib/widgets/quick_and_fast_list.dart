import 'package:flutter/material.dart';
import 'package:eathub/models/food.dart';
import 'package:eathub/screens/dinner_screen.dart';
import 'package:eathub/screens/quick_foods_screen.dart';
import 'package:eathub/screens/recipe_screen.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';
import 'package:eathub/models/food.dart';
import 'package:eathub/screens/dinner_screen.dart';
import 'package:eathub/screens/quick_foods_screen.dart';
import 'package:eathub/screens/lunch_list_screen.dart';
import 'package:eathub/screens/recipe_screen.dart';
import 'package:iconsax/iconsax.dart';

class QuickAndFastList extends StatelessWidget {
  const QuickAndFastList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Breakfast",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const QuickFoodsScreen(),
                ),
              ),
              child: const Text("View all"),
            ),
          ],
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              foods.length,
              (index) {
                if (foods[index].Type == "Breakfast") {
                  return GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RecipeScreen(food: foods[index]),
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      width: 200,
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 130,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(foods[index].image),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text(
                                  foods[index].name,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }
                return const SizedBox();
              },
            ),
          ),
        ),
      ],
    );
  }
}
