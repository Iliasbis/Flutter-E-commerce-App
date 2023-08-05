// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:e_commerce_app/utilities/dimensions.dart';
import 'package:flutter/material.dart';

import '../styles/smallText.dart';

class statusIcon extends StatelessWidget {
  final IconData icon;
  final String iconText;
  final Color iconColor;
  const statusIcon(
      {Key? key,
      required this.icon,
      required this.iconText,
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: dimensions.size24,
        ),
        SizedBox(
          width: 2,
        ),
        smallText(
          text: iconText,
          size: dimensions.size13,
        )
      ],
    );
  }
}
