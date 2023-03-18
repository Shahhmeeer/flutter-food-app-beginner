import 'package:flutter/material.dart';

import 'new_recipe.dart';

class ListContainer extends StatelessWidget {
  const ListContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'New Recipes',
              style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(bottom: 100.0),
                height: 100.0,
                child: ListView.separated(
                  itemBuilder: (context, index) => const NewRecipe(),
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
