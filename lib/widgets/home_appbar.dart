import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: const Text(
            "EatHub",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              height: 1,
            ),
          ),
        ),
        const Spacer(),
        CircleAvatar(
          radius: 25,
          backgroundImage: const AssetImage("assets/images/beaf-steak.jpg"),
        ),
      ],
    );
  }
}
