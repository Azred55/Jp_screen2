import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 57, 53, 45),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,

            child: Image.asset(
              "assets/ice.png",
              width: 300,
              height: 300,
              fit: BoxFit.contain,
            ),
          ),

          // Inhalt (Glas-Karte mit Infos)
          Align(
            alignment: Alignment.center,
            child: GlassContainer(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 320,
              borderRadius: BorderRadius.circular(25),
              blur: 25,
              borderWidth: 1,
              borderColor: Colors.white24,
              color: Colors.white.withOpacity(0.05),
              gradient: null,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Titel & Likes
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(width: 40), // für zentrierten Titel
                        const Text(
                          "Kai in a Cone",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset("assets/star.png"),

                            SizedBox(width: 4),
                            Text(
                              "290",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),

                    // Beschreibung
                    const Text(
                      "Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. "
                      "Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 13,
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 15),

                    // Preis
                    const Text(
                      "₳ 3.99",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Ingredients + Reviews
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Ingredients
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Ingredients",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Row(
                              children: [
                                Image.asset("assets/icon.png", width: 100),
                                const SizedBox(width: 50),
                              ],
                            ),
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "Reviews",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Row(
                              children: [
                                Image.asset("assets/star1.png"),

                                SizedBox(width: 10),
                                Text(
                                  "4.0",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Größen & Counter
          Positioned(
            bottom: 80,
            left: 0,
            right: 0,
            child: Column(
              children: [
                // Size Auswahl
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ChoiceChip(
                      label: const Text("Small"),
                      selected: false,
                      onSelected: (_) {},
                    ),
                    const SizedBox(width: 8),
                    ChoiceChip(
                      label: const Text("Medium"),
                      selected: false,
                      onSelected: (_) {},
                    ),
                    const SizedBox(width: 8),
                    ChoiceChip(
                      label: const Text("Large"),
                      selected: true,
                      onSelected: (_) {},
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Counter
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.remove_circle_outline,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      "1",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_circle_outline,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFB06FEE),
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: const StadiumBorder(),
            elevation: 6,
            shadowColor: Colors.purpleAccent,
          ),
          onPressed: () {},
          child: const Text(
            "Add to order for ₳ 3.99",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
