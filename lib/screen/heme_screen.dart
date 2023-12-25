import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/categories.dart';
import 'package:flutter_application_1/widgets/home_app_bar.dart';
import 'package:flutter_application_1/widgets/home_search_bar.dart';
import 'package:flutter_application_1/widgets/quick_and_fast_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String currentCat = 'All';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(
              15.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const HomeAppBar(),
                const SizedBox(
                  height: 20.0,
                ),
                const HomeSearchBar(),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  height: 170.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      15.0,
                    ),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/images/explore.png',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Categories(currentCat: currentCat),
                const SizedBox(
                  height: 20.0,
                ),
                const QuickAndFastList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
