import 'package:flutter/material.dart';
import 'package:food_app/categories_section.dart';
import 'package:food_app/textfield.dart';

import 'new_recipe.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 2,
              child: CustomTextField(),
            ),
            Container(
              height: 20.0,
              color: Colors.red,
              margin: const EdgeInsets.all(10.0),
              width: double.infinity,
              child: const Text('Categories'),
            ),
            const Expanded(
              flex: 3,
              child: CustomCategories(),
            ),
            Container(
              height: 20.0,
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.all(10.0),
              width: double.infinity,
              child: const Text('See More'),
            ),
            Expanded(
              flex: 7,
              child: SizedBox(
                height: 100,
                // color: Colors.green,
                child: ListView.separated(
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) => const NewRecipe(),
                  itemCount: 20,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFDA4534),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30.0,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Color(0xFFDA4534),
            icon: Icon(Icons.home),
            label: 'hello',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_sharp),
            label: 'Hello',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline_sharp),
            label: 'Hello',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Hello',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Hello',
          ),
        ],
      ),
    );
  }
}
