// ignore_for_file: camel_case_types, must_be_immutable

import 'package:e_commerce_app/styles/colors.dart';
import 'package:e_commerce_app/utilities/dimensions.dart';
import 'package:flutter/material.dart';

class bigText extends StatelessWidget {
  final String text;
  final Color? color;
  double size;
  FontWeight font;
  TextOverflow overFlow;
  bigText({
    super.key,
    this.font = FontWeight.w400,
    required this.size,
    this.overFlow = TextOverflow.ellipsis,
    required this.text,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        overflow: overFlow,
        fontSize: size,
        color: color,
        fontWeight: font,
      ),
    );
  }
}
