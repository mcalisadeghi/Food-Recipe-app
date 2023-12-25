import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/food.dart';

class QuickAndFastList extends StatelessWidget {
  const QuickAndFastList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget> [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:<Widget> [
            const Text(
              'Quick & Fast',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'View all',
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              foods.length,
              (index) => Container(
                width: 200.0,
                child: Stack(
                  children:<Widget> [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget> [
                        Container(
                          width: double.infinity,
                          height: 130.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              15.0,
                            ),
                            image: DecorationImage(
                              image: AssetImage(
                                foods[index].image,
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          foods[index].name,
                          style: const TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children:<Widget> [
                            const Icon(
                              Icons.flash_auto,
                              size: 18.0,
                              color: Color.fromARGB(255, 14, 4, 4),
                            ),
                            Text(
                              '${foods[index].cal} Cal',
                              style: const TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey,
                              ),
                            ),
                            const Text(
                              ' + ',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            const Icon(
                              Icons.lock_clock,
                              size: 18.0,
                              color: Colors.grey,
                            ),
                            Text(
                              '${foods[index].time} Min',
                              style: const TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Positioned(
                      top: 1.0,
                      right: 1.0,
                      child: IconButton(
                        onPressed: () {},
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.white,
                          fixedSize: const Size(
                            30.0,
                            30.0,
                          ),
                        ),
                        icon: const Icon(
                          Icons.heart_broken,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
