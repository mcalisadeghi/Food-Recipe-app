import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'What are you\ncooking today?',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            height: 1.0,
          ),
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                15.0,
              ),
            ),
            backgroundColor: Colors.white,
            fixedSize: Size(
              55.0,
              55.0,
            ),
          ),
          icon: Icon(
            Icons.notifications,
          ),
        ),
      ],
    );
  }
}
