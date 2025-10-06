import 'package:flutter/material.dart';

import 'package:jp_screen2/data.dart';
import 'package:jp_screen2/detail.dart';

class Kartei extends StatelessWidget {
  final Items item;
  const Kartei({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          builder: (context) => Info(item: item),
        );
      },
      child: Container(
        width: 200,
        height: 273,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(240, 141, 91, 234),
              Color.fromARGB(187, 143, 140, 245),
              Color.fromARGB(55, 255, 255, 255),
            ],

            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
          border: Border.all(
            color: const Color.fromARGB(92, 255, 255, 255),
            width: 0.8,
          ),

          color: const Color.fromARGB(209, 238, 238, 238),
          borderRadius: BorderRadius.circular(28),
        ),

        child: Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 150,
                height: 150,
                child: Image.asset(item.imagePath),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Text(
                  item.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),

              Text(
                item.description,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item.price,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      item.likes,
                      style: TextStyle(
                        color: Color.fromARGB(255, 161, 161, 161),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
