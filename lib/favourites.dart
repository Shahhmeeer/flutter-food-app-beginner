import 'package:flutter/material.dart';
import 'package:food_app/custom_grid_tile.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          margin: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20.0),
                child: const Text(
                  'Saves',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 250.0,
                  child: GridView.builder(
                    itemCount: 20,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 105.0,
                      crossAxisSpacing: 15.0,
                      childAspectRatio: 1 / 2,
                    ),
                    itemBuilder: (context, index) => const CustomGridTile(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
