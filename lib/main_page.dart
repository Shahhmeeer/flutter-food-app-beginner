import 'package:flutter/material.dart';

import 'list_container.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 1,
          margin: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                child: TextField(
                  cursorColor: const Color(0xFFDA4534),
                  cursorWidth: 1.0,
                  decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.search),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFDA4534),
                      ),
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    labelText: 'Search',
                    labelStyle: TextStyle(color: Colors.grey[400]),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 15.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 9.0, horizontal: 0.0),
                      child: Text(
                        'Categories',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                        ),
                      ),
                    ),
                    Row(
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
                    Container(
                      alignment: Alignment.centerRight,
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'See More',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color(0xFFDA4534),
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const ListContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
