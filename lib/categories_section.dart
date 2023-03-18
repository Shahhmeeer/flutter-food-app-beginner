import 'package:flutter/material.dart';

class CustomCategories extends StatelessWidget {
  const CustomCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/images/chinese.png',
                height: 100,
                width: 100,
              ),
              const Text(
                'Chinese',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          // Spacer(),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/images/desi.png',
                height: 100,
                width: 100,
              ),
              const Text(
                'Desi',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          // Spacer(),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/images/italian.png',
                height: 100,
                width: 100,
              ),
              const Text(
                'Italian',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
