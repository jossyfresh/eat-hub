import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:eathub/models/cart_item.dart';
import 'package:eathub/models/food.dart';

class FavProvider extends ChangeNotifier {
  final List<Food> _favFoods = [];

  List<Food> get favFoods => _favFoods;

  bool isFavorite(Food food) => _favFoods.contains(food);

  void addFavorite(Food food) {
    if (!_favFoods.contains(food)) {
      _favFoods.add(food);
      notifyListeners();
    }
  }

  void removeFavorite(Food food) {
    if (_favFoods.contains(food)) {
      _favFoods.remove(food);
      notifyListeners();
    }
  }

  // Additional methods as needed (e.g., clear all favorites, filter, etc.)
}
