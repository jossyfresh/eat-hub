import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:eathub/models/cart_item.dart';

class CartProvider extends ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items.toList();
  double price = 0.0;
  String searchquery = "";

  void addItem(CartItem item) {
    // add only if it doesnot exist
    final index = _items.indexWhere((element) => element.id == item.id);
    if (index != -1) {
      _items[index].quantity++;
      notifyListeners();
      return;
    } else {
      _items.add(item);
      notifyListeners();
    }
  }

  void addsearchquery(String query) {
    searchquery = query;
  }

  void removeItem(String id) {
    _items.removeWhere((item) => item.id == id);
    notifyListeners();
  }

  void incrementQuantity(String id) {
    final index = _items.indexWhere((item) => item.id == id);
    if (index != -1) {
      _items[index].quantity++;
      notifyListeners();
    }
  }

  void decrementQuantity(String id) {
    final index = _items.indexWhere((item) => item.id == id);
    if (index != -1) {
      _items[index].quantity--;
      if (_items[index].quantity <= 0) {
        _items.removeAt(index); // Remove if quantity reaches 0
      }
      notifyListeners();
    }
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }

  double getTotalPrice() {
    // turncate the decimal by 2
    double total = 0.0;
    _items.forEach((item) {
      total += item.price * item.quantity;
    });
    total = double.parse(total.toStringAsFixed(2));
    return total;
  }

  String getTax() {
    // only 1 digit after decimal
    // turncate the decimal
    return (getTotalPrice() * 0.15).toStringAsFixed(3);
  }

  String getTotalTotal() {
    return (getTotalPrice() + double.parse(getTax())).toStringAsFixed(3);
  }
}
