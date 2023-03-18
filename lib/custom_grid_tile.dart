import 'package:flutter/material.dart';

class CustomGridTile extends StatelessWidget {
  const CustomGridTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/chinese.png',
        ),
        const SizedBox(
          height: 8.0,
        ),
        const Text(
          'Chinese Food',
          style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Row(
          children: const [
            Icon(Icons.person),
            SizedBox(
              width: 5.0,
            ),
            Text(
              '1 Person',
              style: TextStyle(fontSize: 12.0),
            ),
          ],
        ),
        const SizedBox(
          height: 5.0,
        ),
        Row(
          children: const [
            Icon(Icons.timer_sharp),
            SizedBox(
              width: 5.0,
            ),
            Text(
              '20 min',
              style: TextStyle(fontSize: 12.0),
            ),
          ],
        ),
      ],
    );
  }
}
