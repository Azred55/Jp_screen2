import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class GlassCardWidget extends StatelessWidget {
  const GlassCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Stack(
          children: [
            Image.asset("assets/card1.png"),
            GlassContainer(
              width: 350,
              height: 240,
              borderRadius: BorderRadius.circular(30),
              blur: 60,
              borderWidth: 1,
              borderColor: const Color.fromARGB(24, 255, 255, 255),
              color: const Color.fromARGB(10, 255, 255, 255),
              gradient: null,
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Angi's Yummy Burger",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/star.png",
                              width: 15,
                              height: 13,
                              color: const Color(0xFFed80b8),
                            ),
                            const SizedBox(width: 2),
                            const Text(
                              "4.8",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      "Delish vegan burger\nthat tastes like heaven",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "₳ 13.99",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 64),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 11,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),

                        gradient: const LinearGradient(
                          colors: [Color(0xFFE0B0FF), Color(0xFFB06FEE)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),

                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFFC77FFF),
                            blurRadius: 15,
                            spreadRadius: 0.1,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),

                      child: const Text(
                        "Add to order",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 39.24,
              left: 131.9,
              child: SizedBox(
                width: 217.23,
                height: 217.23,
                child: Image.asset("assets/Burger_3D.png", fit: BoxFit.contain),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
