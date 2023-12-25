import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/heme_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  List screens = const [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        height: 70.0,
        child: Row(
          children: <Widget>[
            GestureDetector(
              onTap: () => setState(
                () {
                  selectedIndex = 0;
                },
              ),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.home,
                    color: selectedIndex == 0 ? Colors.red : Colors.grey,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: selectedIndex == 0 ? Colors.red : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => setState(
                () {
                  selectedIndex = 1;
                },
              ),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.heart_broken,
                    color: selectedIndex == 1 ? Colors.red : Colors.grey,
                  ),
                  Text(
                    'Favorite',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: selectedIndex == 1 ? Colors.red : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => setState(
                () {
                  selectedIndex = 2;
                },
              ),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.calculate,
                    color: selectedIndex == 2 ? Colors.red : Colors.grey,
                  ),
                  Text(
                    'Meal Plan',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: selectedIndex == 2 ? Colors.red : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => setState(
                () {
                  selectedIndex = 3;
                },
              ),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.settings,
                    color: selectedIndex == 3 ? Colors.red : Colors.grey,
                  ),
                  Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: selectedIndex == 3 ? Colors.red : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: screens[selectedIndex],
    );
  }
}
