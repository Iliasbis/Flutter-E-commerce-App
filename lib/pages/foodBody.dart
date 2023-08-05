// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:e_commerce_app/pages/foodView.dart';
import 'package:e_commerce_app/pages/food_details.dart';
import 'package:e_commerce_app/styles/bigText.dart';
import 'package:e_commerce_app/styles/colors.dart';
import 'package:e_commerce_app/styles/smallText.dart';
import 'package:e_commerce_app/utilities/dimensions.dart';
import 'package:e_commerce_app/utilities/statusIcons.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FoodBody extends StatefulWidget {
  FoodBody({Key? key}) : super(key: key);

  @override
  State<FoodBody> createState() => _FoodBodyState();
}

class _FoodBodyState extends State<FoodBody> {
  void toFoodView() {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return FoodView();
      },
    ));
  }

  void toFoodDetails() {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return foodDetails();
      },
    ));
  }

  final List image = [
    "lib/image/food1.jpg",
    "lib/image/food2.jpg",
    "lib/image/food3.jpg",
    "lib/image/food4.jpg",
    "lib/image/food5.jpg",
    "lib/image/food6.jpg",
    "lib/image/food7.jpg",
    "lib/image/food8.jpg",
    "lib/image/food9.jpg",
  ];
  final List foodName = [
    "Fruits de mer ",
    "Salade",
    "Salade Friuts",
    "Burger",
    "Rfissa",
    "Tacos",
    "Big M",
    "Tacos",
    "Tacos",
  ];
  final List foodDescription = [
    "Fruits de mer bnin o nadiii ti9 biya ",
    "Salade naadya mteyebha ana hh",
    "Salade Friuts dyal l maroc",
    "Burger hssn mn salta3 burger ",
    "Rfissa made in morrocco",
    "Tacos Bnin o zwin hhhh",
    "Big M kber mn rassi wlh hhhhh ",
    "Tacos shiwerrr",
    "Tacos kbiiiir",
  ];
  PageController _controller = PageController(viewportFraction: 0.80);
  double currentPage = 0;
  double scaleVal = 0.8;
  int _selectedIndex = 0;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _controller.addListener(() {
      setState(() {
        currentPage = _controller.page!;
        // print("the current value is " + currentPage.toString());
      });
    });
  }

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: dimensions.containerHeight,
          child: PageView.builder(
            onPageChanged: (index) {
              setState(
                () {
                  _selectedIndex = index;
                },
              );
            },
            controller: _controller,
            itemCount: image.length,
            itemBuilder: (context, index) {
              scaleVal = _selectedIndex == index ? 1.0 : 0.87;
              return TweenAnimationBuilder(
                duration: const Duration(milliseconds: 200),
                tween: Tween(begin: scaleVal, end: scaleVal),
                curve: Curves.easeIn,
                child: buildPage(index),
                builder: (BuildContext context, dynamic value, Widget? child) {
                  return Transform.scale(
                    scale: value,
                    child: child,
                  );
                },
              );
            },
          ),
        ),
        SizedBox(
          height: dimensions.size5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SmoothPageIndicator(
              controller: _controller,
              effect: ExpandingDotsEffect(
                activeDotColor: colors.mainColor,
                dotHeight: dimensions.radius13,
                dotWidth: dimensions.radius13,
              ),
              count: image.length,
            ),
          ],
        ),
        SizedBox(
          height: dimensions.height10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: dimensions.width20, vertical: dimensions.height10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              bigText(
                text: "Popular",
                size: dimensions.size20,
              ),
              SizedBox(
                width: dimensions.width10,
              ),
              Container(
                margin: EdgeInsets.only(bottom: dimensions.size5),
                child: bigText(
                  size: dimensions.size20,
                  text: ".",
                ),
              ),
              SizedBox(
                width: dimensions.width10,
              ),
              smallText(
                text: "Food Pairing",
                size: dimensions.size13,
              ),
            ],
          ),
        ),
        SizedBox(
          height: dimensions.height10,
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: image.length,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: toFoodDetails,
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(dimensions.radius15),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            image[index],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: dimensions.width5),
                        height: dimensions.height100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(dimensions.radius15),
                            topRight: Radius.circular(dimensions.radius15),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            bigText(
                              text: foodName[index],
                              size: dimensions.size20,
                            ),
                            smallText(
                              text: foodDescription[index],
                              size: dimensions.size13,
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
              ),
            );
          },
        ),
      ],
    );
  }

  Widget buildPage(int index) {
    return GestureDetector(
      onTap: toFoodView,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(
            height: dimensions.cardHeight,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(dimensions.radius13),
              child: Image.asset(
                image[index],
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.95),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: dimensions.width13),
              alignment: Alignment.bottomCenter,
              height: dimensions.cardText,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(dimensions.radius13),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: dimensions.width10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: dimensions.width200,
                          child: bigText(
                            text: foodName[index],
                            color: Colors.black,
                            size: dimensions.size20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: colors.mainColor,
                          size: dimensions.size15,
                        ),
                        Icon(
                          Icons.star,
                          color: colors.mainColor,
                          size: dimensions.size15,
                        ),
                        Icon(
                          Icons.star,
                          color: colors.mainColor,
                          size: dimensions.size15,
                        ),
                        Icon(
                          Icons.star,
                          color: colors.mainColor,
                          size: dimensions.size15,
                        ),
                        Icon(
                          Icons.star,
                          color: colors.mainColor,
                          size: dimensions.size15,
                        ),
                        SizedBox(
                          width: dimensions.width7,
                        ),
                        smallText(
                          text: "4.5",
                          size: dimensions.size13,
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
          ),
        ],
      ),
    );
  }
}
