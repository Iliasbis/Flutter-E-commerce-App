// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import 'package:e_commerce_app/pages/foodView.dart';
import 'package:e_commerce_app/styles/bigText.dart';
import 'package:e_commerce_app/styles/colors.dart';
import 'package:e_commerce_app/styles/smallText.dart';
import 'package:e_commerce_app/utilities/dimensions.dart';
import 'package:e_commerce_app/pages/foodBody.dart';
import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // ignore: avoid_print
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Column(
          children: [
            SizedBox(
              height: dimensions.height10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: dimensions.width20,
                  vertical: dimensions.height10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      bigText(
                        size: dimensions.size20,
                        text: "Kingdom of Morocco",
                        color: colors.mainColor,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          smallText(
                            text: "Casablanca",
                            size: dimensions.size13,
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(dimensions.size13),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(dimensions.radius13),
                      color: colors.mainColor,
                    ),
                    child: Icon(
                      Icons.search,
                      size: dimensions.size24,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: dimensions.height13,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: FoodBody(),
            )),
          ],
        ),
        // FoodView(),
      ),
    );
  }
}
