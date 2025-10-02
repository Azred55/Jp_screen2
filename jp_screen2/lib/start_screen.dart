import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 1.0, end: 1.05).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              SizedBox.expand(
                child: Image.asset(
                  'assets/bg_startscreen.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 100,
                left: -32,
                child: SizedBox(
                  child: Image.asset(
                    'assets/chick3D.png',
                    width: screenWidth * 1.42,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                bottom: 105,
                left: 0,
                right: 0,
                child: SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    "assets/T2.png",
                    fit: BoxFit.fill,
                    color: Colors.white38,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: GlassContainer(
                  margin: const EdgeInsets.only(
                    bottom: 120,
                    left: 30,
                    right: 29,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  height: 185,
                  blur: 15,
                  borderColor: Colors.white,
                  borderWidth: 0.2,
                  gradient: LinearGradient(
                    colors: [
                      Colors.white.withAlpha(2),
                      Colors.white.withAlpha(1),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Text(
                          "Feeling Snackish Today?",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 8, left: 30, right: 30),
                        child: Text(
                          "Explore Angi`s most popular snack selection and get instantly happy.",
                          style: TextStyle(color: Colors.white54, fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 25),
                      ScaleTransition(
                        scale: _animation,
                        child: Container(
                          width: screenWidth * 0.46,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(
                              colors: [Color(0xFFe970c4), Color(0xFFf69ea3)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0xFFE386FB),
                                spreadRadius: 2,
                                blurRadius: 8,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/home');
                            },

                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: EdgeInsets.zero,
                            ),
                            child: const Text(
                              "Order Now",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
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
