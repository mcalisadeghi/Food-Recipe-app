import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/category.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
    required this.currentCat,
  });

  final String currentCat;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          catgories.length,
          (index) => Container(
            decoration: BoxDecoration(
              color:
                  currentCat == catgories[index] ? Colors.grey : Colors.white,
              borderRadius: BorderRadius.circular(
                25.0,
              ),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            margin: EdgeInsets.only(
              right: 20.0,
            ),
            child: Text(
              catgories[index],
              style: TextStyle(
                color: currentCat == catgories[index]
                    ? Colors.white
                    : Colors.grey.shade600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
