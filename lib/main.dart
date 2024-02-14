import 'package:eathub/Providers/user_provider.dart';
import 'package:eathub/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:eathub/constants.dart';
import 'package:eathub/screens/main_screen.dart';
import 'package:provider/provider.dart';
import 'package:eathub/Providers/cart_provider.dart';
import 'package:eathub/Providers/fav_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:eathub/firebase_options.dart';
import 'package:eathub/screens/main_page.dart';
import 'package:eathub/screens/register_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => FavProvider()),
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eathub',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Biofit",
        colorScheme: ColorScheme.fromSeed(seedColor: kprimaryColor),
        scaffoldBackgroundColor: kbackgroundColor,
        useMaterial3: true,
      ),
      home: MainPage(),
    );
  }
}
