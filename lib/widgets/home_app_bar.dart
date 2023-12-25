import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Text(
          'What are you\ncooking today?',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            height: 1.0,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                15.0,
              ),
            ),
            backgroundColor: Colors.white,
            fixedSize: const Size(
              55.0,
              55.0,
            ),
          ),
          icon: const Icon(
            Icons.notifications,
          ),
        ),
      ],
    );
  }
}
