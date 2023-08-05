// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app/styles/smallText.dart';
import 'package:e_commerce_app/utilities/statusIcons.dart';
import 'package:flutter/material.dart';
import '../styles/bigText.dart';
import 'dimensions.dart';
import '../styles/colors.dart';

class FoodColumn extends StatelessWidget {
  final String foodName;
  const FoodColumn({Key? key, required this.foodName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: dimensions.width200,
                          child: bigText(
                            text: foodName,
                            font: FontWeight.w500,
                            size: dimensions.size24,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: dimensions.height13,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: colors.mainColor,
                          size: dimensions.size20,
                        ),
                        Icon(
                          Icons.star,
                          color: colors.mainColor,
                          size: dimensions.size20,
                        ),
                        Icon(
                          Icons.star,
                          color: colors.mainColor,
                          size: dimensions.size20,
                        ),
                        Icon(
                          Icons.star,
                          color: colors.mainColor,
                          size: dimensions.size20,
                        ),
                        Icon(
                          Icons.star,
                          color: colors.mainColor,
                          size: dimensions.size20,
                        ),
                        SizedBox(
                          width: dimensions.width7,
                        ),
                        smallText(
                          size: dimensions.size13,
                          text: "4.5",
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: dimensions.width7,
                        ),
                        Container(
                          width: dimensions.width110,
                          child: smallText(
                            size: dimensions.size13,
                            text: "1235 comments",
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: dimensions.height10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        statusIcon(
                          icon: Icons.circle,
                          iconText: "Normal",
                          iconColor: Colors.yellowAccent,
                        ),
                        statusIcon(
                          icon: Icons.location_on,
                          iconText: "1.7 km",
                          iconColor: colors.mainColor,
                        ),
                        statusIcon(
                          icon: Icons.timer_sharp,
                          iconText: "42 min",
                          iconColor: Colors.red,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
