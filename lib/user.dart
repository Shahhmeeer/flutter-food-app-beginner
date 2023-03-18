import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  final List<String> tabNames = [
    'Your Recipes',
    'Back up',
    'Rate Us',
    'Share',
    'Feedback',
    'Logout'
  ];
  final List<IconData> icons = [
    Icons.favorite_outline,
    Icons.backup_outlined,
    Icons.star_outline,
    Icons.share,
    Icons.feedback_outlined,
    Icons.logout,
  ];
  UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 15.0),
                child: const Text(
                  'Welcome Back',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/user.png'),
                    radius: 60.0,
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        border: BorderDirectional(
                          bottom: BorderSide(
                            color: Color.fromRGBO(105, 87, 87, 0.498),
                          ),
                        ),
                      ),
                      margin: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Floyd Dicker',
                            style: TextStyle(fontSize: 20.0),
                          ),
                          Icon(
                            Icons.edit,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 50.0),
                height: 300.0,
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) => Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      border: BorderDirectional(
                        bottom: BorderSide(
                          color: Color.fromRGBO(105, 87, 87, 0.498),
                        ),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        foregroundColor: MaterialStatePropertyAll(Colors.black),
                      ),
                      child: SizedBox(
                        width: 150.0,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(icons[index]),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Text(tabNames[index]),
                          ],
                        ),
                      ),
                    ),
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
