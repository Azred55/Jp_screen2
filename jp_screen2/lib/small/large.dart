import 'package:flutter/material.dart';

class SizeSelector extends StatefulWidget {
  const SizeSelector({super.key});

  @override
  State<SizeSelector> createState() => _SizeSelectorSegmentState();
}

class _SizeSelectorSegmentState extends State<SizeSelector> {
  final List<String> sizes = ["Small", "Medium", "Large"];
  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 170,
      height: 30,
      decoration: BoxDecoration(
        color: const Color(0x24767680),
        borderRadius: BorderRadius.circular(9),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(sizes.length, (index) {
          final bool isSelected = index == selectedIndex;
          return GestureDetector(
            onTap: () => setState(() => selectedIndex = index),
            child: Container(
              width: 50,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: isSelected
                    ? const Color(0xFF636366)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(9),
              ),
              child: Text(
                sizes[index],
                style: TextStyle(
                  color: isSelected ? Colors.white : Color(0x60ebebf5),
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
