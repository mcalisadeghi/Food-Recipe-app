import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        height: 70.0,
        child: Row(
          children: [
            GestureDetector(
              child:  Column(
                children: [
                  Icon(
                    Icons.home,
                    color:  selectedIndex == 0 ? Colors.red : Colors.grey,
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
              child: Column(
                children: [
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
              child:  Column(
                children: [
                  Icon(
                    Icons.calculate,
                    color: selectedIndex == 2 ? Colors.red : Colors.grey,
                  ),  Text(
                    'Meal Plan',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: selectedIndex == 2 ? Colors.red : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
