import 'package:flutter/material.dart';

class NewsFeed extends StatelessWidget {
  const NewsFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            const SizedBox(width: 15.0),
            Expanded(
              child: SizedBox(
                height: 60.0,
                child: Row(
                  children: const [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/user.png'),
                      radius: 20.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Dick Greyson',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Icon(Icons.person_add_alt_1),
          ],
        ),
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Image.asset(
              'assets/images/feed image.png',
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Icon(
                Icons.favorite_border,
                color: Colors.white,
                size: 25.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
