import 'package:flutter/material.dart';
import 'package:pet_app/drawer_screen.dart';
import 'package:pet_app/home_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Pet App'),
      // ),
      body: Stack(children: const [
        DrawerScreen(), // at the bottom
        HomeScreen(),
      ]),
    );
  }
}
