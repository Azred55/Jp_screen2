import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:jp_screen2/small/large.dart';

class Info extends StatefulWidget {
  const Info({super.key, required this.item});
  final item;

  @override
  State<Info> createState() => _DetailState();
}

class _DetailState extends State<Info> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    )..forward();

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutBack,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 255, 255, 255),
      body: Stack(
        children: [
          Align(
            alignment: const Alignment(0, 1),
            child: Container(
              height: 751,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 56, 53, 45),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),

          Positioned(
            top: -8,
            right: -21,
            child: SizedBox(
              height: 460,
              width: 460,
              child: Image.asset(widget.item.imagePath),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250),
            child: Align(
              child: GlassContainer(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 330,
                borderRadius: BorderRadius.circular(25),
                blur: 25,
                borderWidth: 1,
                borderColor: Colors.white24,
                color: const Color.fromARGB(0, 255, 255, 255),
                gradient: null,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(width: 40),
                          Text(
                            widget.item.likes,
                            style: const TextStyle(
                              fontSize: 12,

                              color: Colors.white,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                widget.item.name,
                                style: const TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 4),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        "Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi \naccumsan feugiat magna aliquam feugiat ac \net. Pulvinar hendrerit id arcu at sed etiam \nsemper mi hendrerit. Id aliquet quis quam",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(131, 255, 255, 255),
                          fontSize: 13,
                          height: 1.4,
                        ),
                      ),
                      const SizedBox(height: 25),
                      Text(
                        widget.item.price,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Image.asset("assets/icon.png", width: 100),
                                  const SizedBox(width: 50),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Reviews",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Image.asset("assets/star1.png"),
                                  const SizedBox(width: 13),
                                  const Text(
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
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizeSelector(),
                    SizedBox(width: 100),

                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.remove,
                        color: Color.fromARGB(82, 255, 255, 255),
                      ),
                    ),
                    const Text(
                      "1",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        color: Color.fromARGB(82, 255, 255, 255),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 0),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ScaleTransition(
                    scale: _animation,
                    child: Container(
                      width: 330,
                      height: 48,
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
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.zero,
                        ),
                        child: const Text(
                          "Add to order ₳ 3.99",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 15.0,
            top: 140,
            child: Container(
              width: 30.0,
              height: 30.0,
              decoration: BoxDecoration(
                color: Color.fromARGB(26, 203, 199, 199),
                shape: BoxShape.circle,
                border: BoxBorder.all(
                  color: const Color.fromARGB(61, 255, 255, 255),
                ),
              ),
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(
                  Icons.close,
                  color: Color.fromARGB(189, 255, 255, 255),
                  size: 18.0,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
