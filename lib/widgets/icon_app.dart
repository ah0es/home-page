import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconApp extends StatelessWidget {
  const IconApp({
    super.key,
    required this.icon,
    required this.paddingValue,
  });
  final String icon;
  final double paddingValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(paddingValue),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 0.5,
            blurRadius: 0,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: SvgPicture.asset(icon),
    );
  }
}