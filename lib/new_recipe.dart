import 'package:flutter/material.dart';

class NewRecipe extends StatelessWidget {
  const NewRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/images/recipe.png'),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Brownie Lava Cake',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: TextStyle(
                      fontSize: 11.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.person,
                                size: 20.0,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text('1 Person'),
                            ],
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.alarm_sharp,
                                size: 20.0,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text('20 minute'),
                            ],
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.favorite_border,
                        color: Color(0xFFDA4534),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
