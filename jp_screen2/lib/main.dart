import 'package:flutter/material.dart';
import 'package:jp_screen2/data.dart';
import 'package:jp_screen2/detail.dart';
import 'package:jp_screen2/home.dart';
import 'package:jp_screen2/start_screen.dart';

void main() {
  runApp(const SnackishApp());
}

class SnackishApp extends StatelessWidget {
  const SnackishApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const MainApp(),
        "/home": (context) => const HomeScreen(),
        "/details": (context) {
          final item = ModalRoute.of(context)!.settings.arguments as Items;
          return Info(item: item);
        },
      },
    );
  }
}
