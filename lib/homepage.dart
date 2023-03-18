import 'package:flutter/material.dart';
import 'package:food_app/add_new_item.dart';
import 'package:food_app/explore.dart';
import 'package:food_app/favourites.dart';
import 'package:food_app/main_page.dart';
import 'package:food_app/user.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _pages = [
    const MainPage(),
    const ExplorePage(),
    const AddNewItem(),
    const FavouritesScreen(),
    UserScreen(),
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: const Color(0xFFDA4534),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedPageIndex,
        selectedItemColor: Colors.red[900],
        iconSize: 25.0,
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
