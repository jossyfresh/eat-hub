import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:eathub/Providers/cart_provider.dart';
import 'package:provider/provider.dart';
import 'package:eathub/screens/searched_foodscreen.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final searchquerycontroller = TextEditingController();
    final CartsProvider = Provider.of<CartProvider>(context);

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      child: Row(
        children: [
          Icon(Iconsax.search_normal),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              controller: searchquerycontroller,
              onSubmitted: (value) {
                CartsProvider.searchquery = value;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchedScreen(),
                  ),
                );
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search any Restaurants",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
