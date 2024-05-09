
import 'package:flutter/material.dart';

class TextData extends StatelessWidget {
  const TextData({
    super.key,
    required this.t1,
    required this.t2,
  });
  final String t1, t2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          t1,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
            fontFamily: 'Cairo',
          ),
        ),
        Text(
          t2,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            fontFamily: 'Cairo',
          ),
        ),
      ],
    );
  }
}
