import 'package:flutter/material.dart';
import 'package:test_flutter/widgets/app_bar.dart';
import 'package:test_flutter/widgets/discover_card.dart';
import 'package:test_flutter/widgets/product_card.dart';
import 'package:test_flutter/widgets/see_more.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              SizedBox(height: 20),
              AppBarWidget(),
              SizedBox(height: 20),
              DiscoverCard(),
              SizedBox(height: 20),
              SeeMore(),
              SizedBox(height: 20),
              ProductCard(),
            ],
          ),
        ),
      ),
    );
  }
}
