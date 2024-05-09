import 'package:flutter/material.dart';
import 'package:test_flutter/widgets/page_indicator.dart';

class DiscoverCard extends StatelessWidget {
  const DiscoverCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 171,
      width: 380,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/images/Rectangle 5651.png',
          ),
        ),
      ),
      child: const Stack(
        children: [
          Positioned(
            top: 25,
            left: 280,
            child: Text(
              "اكتشف",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Cairo',
              ),
            ),
          ),
          Positioned(
            top: 55,
            left: 170,
            child: Text(
              "وحدتك السكنية المستقبلية",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                fontFamily: 'Cairo',
              ),
            ),
          ),
          Positioned(
            top: 140,
            left: 150,
            child: PageIndicator(),
          )
        ],
      ),
    );
  }
}
