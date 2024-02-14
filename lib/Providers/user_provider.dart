import 'dart:ffi';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:eathub/models/cart_item.dart';
import 'package:eathub/models/user.dart';
import 'package:eathub/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';



class UserProvider extends ChangeNotifier {
  CurrentUser user = CurrentUser(
    email: "",
    password: "",
    name: "",
    phone: "",
    address: "",
    image: "",
  );

  void setUser(CurrentUser user) {
    user = user;
    notifyListeners();
  }

  void clearUser() {
    CurrentUser newuser = CurrentUser(
      email: "",
      password: "",
      name: "",
      phone: "",
      address: "",
      image: "",
    );
    user = newuser;
    notifyListeners();
  }

  void logout() {
    // remove snapshot Data
    
  }
}
