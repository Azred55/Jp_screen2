import 'package:flutter/material.dart';
import 'package:jp_screen2/burger.dart';
import 'package:jp_screen2/glasschip.dart';
import 'package:jp_screen2/kartei.dart';
import 'package:jp_screen2/data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int initialSelected = 0;

  final items = Items.itemsData;

  final List<String> _categories = [
    'All categories',
    'Salty',
    'Sweet',
    'Drinks',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              SizedBox.expand(
                child: Image.asset(
                  'assets/bg_mainscreen.png',
                  fit: BoxFit.cover,
                ),
              ),

              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),

                      const Text(
                        'Choose Your Favorite\nSnack',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          height: 1.4,
                        ),
                      ),
                      const SizedBox(height: 20),
                      CategorySelector(
                        categories: _categories,
                        initialSelected: _categories[initialSelected],
                      ),

                      const SizedBox(height: 42),

                      GlassCardWidget(),
                      const SizedBox(height: 47),
                      const Text(
                        "We Recommend",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 18),

                      SizedBox(
                        height: 262,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Kartei(item: items[index]),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
