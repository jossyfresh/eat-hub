import 'package:eathub/widgets/cart_card.dart';
import 'package:eathub/widgets/cart_appbar.dart';
import 'package:eathub/Providers/cart_provider.dart';
import 'package:eathub/models/food.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:eathub/widgets/cart_card.dart';
import 'package:eathub/widgets/lunch_list.dart';
import 'package:eathub/widgets/quick_screen_appbar.dart';
import 'package:eathub/widgets/lunch_list_appbar.dart';
import 'package:eathub/widgets/cart_appbar.dart';
import 'package:eathub/models/cart_item.dart';
import 'package:iconsax/iconsax.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    double price = cartProvider.getTotalPrice();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CartAppBar(),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 520,
                  child: ListView.builder(
                      itemCount: cartProvider.items.length,
                      itemBuilder: (context, index) {
                        return CartCards(cartItem: cartProvider.items[index]);
                      }),
                ),
                const SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "SubTotal",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              price.toString(),
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 5),
                            const Text("Br", style: TextStyle(fontSize: 15)),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),

                    // tax
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Tax 15%",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              cartProvider.getTax(),
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 5),
                            const Text("Br", style: TextStyle(fontSize: 15))
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    // total(including tax)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Total",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              cartProvider.getTotalTotal(),
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 5),
                            const Text("Br", style: TextStyle(fontSize: 15))
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),

                    // order button
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          if (cartProvider.items.length > 0) {
                            cartProvider.clearCart();
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor:
                                  Colors.green.shade400, // Success green
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              elevation: 39, // Slight elevation for depth

                              padding: EdgeInsets.all(20),
                              duration: const Duration(seconds: 2),
                              content: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Optionally include food image:
                                  // Image.network(widget.food.image, width: 30, height: 30),
                                  Flexible(
                                    child: Text(
                                      'Your Order has been Placed',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.check_circle,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                ],
                              ),
                            ));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor:
                                  Colors.red.shade400, // Success green
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              elevation: 39, // Slight elevation for depth

                              padding: EdgeInsets.all(20),
                              duration: const Duration(seconds: 2),
                              content: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Optionally include food image:
                                  // Image.network(widget.food.image, width: 30, height: 30),
                                  Flexible(
                                    child: Text(
                                      'There is No Order Yet',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.check_circle,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                ],
                              ),
                            ));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          onPrimary: Colors.white,
                        ),
                        child: const Text("Check Out"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CartCards extends StatelessWidget {
  final CartItem cartItem;

  const CartCards({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(cartItem.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    cartItem.name,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    cartItem.price.toString(),
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(width: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  cartProvider.incrementQuantity(cartItem.id);
                },
                icon: Icon(
                  Icons.add_circle_outline,
                )),
            Row(
              children: [
                Text('${cartItem.quantity}'),
                Text("                   ("),
                Text(
                    '${(cartItem.quantity * cartItem.price).toStringAsFixed(2)}'),
                Text(")"),
              ],
            ),
            IconButton(
                onPressed: () {
                  cartProvider.decrementQuantity(cartItem.id);
                },
                icon: Icon(
                  Icons.remove_circle_outline,
                )),
          ],
        ),
      ]),
    );
  }
}
