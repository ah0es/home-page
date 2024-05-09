import 'package:flutter/material.dart';
import 'package:test_flutter/widgets/icon_app.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconApp(
          icon: 'assets/icons/notification.svg',
          paddingValue: 6.5,
        ),
        Column(
          children: [
            Text(
              '     الرئيسية',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'Cairo',
              ),
            ),
            Text(
              'اهلا بك, احمد',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Cairo',
              ),
            ),
          ],
        )
      ],
    );
  }
}