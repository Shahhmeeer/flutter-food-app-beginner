import 'package:flutter/material.dart';
import 'package:food_app/feed.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 15.0),
                child: const Text(
                  'News Feed',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 300.0,
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) => const NewsFeed(),
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
