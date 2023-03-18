import 'package:flutter/material.dart';

class AddNewItem extends StatelessWidget {
  const AddNewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          // color: Colors.red,
          margin: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'New Recipe',
                style: TextStyle(fontSize: 20.0),
              ),
              Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/images/new file.png',
                        width: 200.0,
                      ),
                      const Icon(
                        Icons.add,
                        size: 70.0,
                        color: Color.fromRGBO(231, 231, 231, 0.5),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20.0),
                    width: 120.0,
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          margin: const EdgeInsets.only(bottom: 10.0),
                          padding: const EdgeInsets.only(left: 5.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.red),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: DropdownButton(
                            underline: Container(),
                            hint: const Text('1 person'),
                            elevation: 3,
                            borderRadius: BorderRadius.circular(10.0),
                            isExpanded: false,
                            items: const [
                              DropdownMenuItem(
                                value: '1 person',
                                child: Text('1 Person'),
                              ),
                              DropdownMenuItem(
                                value: '2 person',
                                child: Text('2 Person'),
                              ),
                              DropdownMenuItem(
                                value: '3 person',
                                child: Text('3 Person'),
                              ),
                            ],
                            onChanged: (value) {},
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(left: 5.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.red),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: DropdownButton(
                            underline: Container(),
                            hint: const Text('20 min'),
                            elevation: 3,
                            borderRadius: BorderRadius.circular(10.0),
                            isExpanded: false,
                            items: const [
                              DropdownMenuItem(
                                value: '20 min',
                                child: Text('20 min'),
                              ),
                              DropdownMenuItem(
                                value: '30 min',
                                child: Text('30 min'),
                              ),
                              DropdownMenuItem(
                                value: '40 min',
                                child: Text('40 min'),
                              ),
                            ],
                            onChanged: (value) {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(),
              Container(),
              Column(),
            ],
          ),
        ),
      ),
    );
  }
}
