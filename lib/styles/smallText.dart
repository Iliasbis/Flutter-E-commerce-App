// ignore_for_file: must_be_immutable

import 'package:e_commerce_app/styles/colors.dart';
import 'package:e_commerce_app/utilities/dimensions.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class smallText extends StatelessWidget {
  final String text;
  final Color? color;
  double size;
  TextOverflow overFlow;
  smallText({
    super.key,
    required this.size ,
    this.overFlow = TextOverflow.ellipsis,
    required this.text,
    this.color = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        overflow: overFlow,
        fontSize: size,
        color: colors.smallTextColor,
      ),
    );
  }
}
