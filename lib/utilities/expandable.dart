// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app/styles/colors.dart';
import 'package:e_commerce_app/utilities/dimensions.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

class expandable extends StatelessWidget {
  final String decription;
  final int maxLine;
  const expandable({required this.decription, this.maxLine=4, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        child: SingleChildScrollView(
          child: ExpandableText(
            decription,
            style: TextStyle(
              fontSize: dimensions.size24 - dimensions.width5,
              color: Color.fromARGB(221, 46, 45, 45),
              fontWeight: FontWeight.w400,
              height: dimensions.screenHeight / 650,
            ),
            expandText: "Show More",
            animationCurve: Curves.bounceInOut,
            expandOnTextTap: true,
            animation: true,
            maxLines: maxLine,
            collapseText: "show less ",
          ),
        ),
      ),
    );
  }
}
