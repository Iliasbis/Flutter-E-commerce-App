// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:e_commerce_app/styles/bigText.dart';
import 'package:e_commerce_app/styles/colors.dart';
import 'package:e_commerce_app/utilities/dimensions.dart';
import 'package:e_commerce_app/utilities/expandable.dart';
import 'package:e_commerce_app/utilities/statusIcons.dart';
import 'package:flutter/material.dart';

class foodDetails extends StatefulWidget {
  const foodDetails({Key? key}) : super(key: key);

  @override
  State<foodDetails> createState() => _foodDetailsState();
}

class _foodDetailsState extends State<foodDetails> {
  double prix = 20;
  int quantity = 1;
  void add() {
    setState(() {
      quantity++;
      prix = prix + 20;
    });
  }

  void sub() {
    setState(() {
      if (quantity != 0 && prix != 20) {
        quantity--;
        prix = prix - 20;
      }
    });
  }

  void back() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: GestureDetector(
                onTap: back,
                child: Container(
                  height: dimensions.height20,
                  width: dimensions.width20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(136, 214, 214, 214),
                  ),
                  child: Icon(Icons.close),
                ),
              ),
              actions: [
                Container(
                  padding: EdgeInsets.all(dimensions.size15),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(136, 214, 214, 214),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.shopping_cart_outlined),
                )
              ],
              pinned: true,
              expandedHeight: dimensions.height300,
              toolbarHeight: dimensions.height100 - dimensions.height15,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(10),
                child: Container(
                  padding: EdgeInsets.all(dimensions.size10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(dimensions.radius20),
                      topRight: Radius.circular(dimensions.radius20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      bigText(
                        text: 'Salade Friuts',
                        size: dimensions.size24,
                      ),
                    ],
                  ),
                ),
              ),
              elevation: 0,
              backgroundColor: Colors.grey[300],
              flexibleSpace: FlexibleSpaceBar(
                title: Row(
                  children: [
                    const statusIcon(
                      icon: Icons.close,
                      iconText: "Close",
                      iconColor: Colors.white,
                    )
                  ],
                ),
                background: Image.asset(
                  "lib/image/food3.jpg",
                  fit: BoxFit.cover,
                  width: double.maxFinite,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: dimensions.width13),
                color: Colors.white,
                child: expandable(
                    maxLine: 12,
                    decription:
                        "4 d sbah o makanjawbch ikma mat ikma dawh tsenit bladi 7it galo ghatsayb bateau mcha o tba3to 3aym mama ma tkhafich yeah     tla3 z3af nfss nhar kolchi ki t3awd kolchi baghi bach yfi9 la bzzf nfss doza nfss lmadi nfss shabi gol li bimn nti9 ch7al d lbinga khessatni bach nfi9 sekran o baghi nzid nskr b rii9 ch7al mn mera wesatni mi ela ch7al mn tri9 3amra gha 7essada o monafi9in 3am akhor f blad lbonne annee frere 4 d sbah o makanjawbch ikma mat ikma dawh tsenit bladi 7it galo ghatsayb bateau mcha o tba3to 3aym mama ma tkhafich yeah     tla3 z3af nfss nhar kolchi ki t3awd kolchi baghi bach yfi9 la bzzf nfss doza nfss lmadi nfss shabi gol li bimn nti9 ch7al d lbinga khessatni bach nfi9 sekran o baghi nzid nskr b rii9 ch7al mn mera wesatni mi ela ch7al mn tri9 3amra gha 7essada o monafi9in 3am akhor f blad lbonne annee frere4 d sbah o makanjawbch ikma mat ikma dawh tsenit bladi 7it galo ghatsayb bateau mcha o tba3to 3aym mama ma tkhafich yeah     tla3 z3af nfss nhar kolchi ki t3awd kolchi baghi bach yfi9 la bzzf nfss doza nfss lmadi nfss shabi gol li bimn nti9 ch7al d lbinga khessatni bach nfi9 sekran o baghi nzid nskr b rii9 ch7al mn mera wesatni mi ela ch7al mn tri9 3amra gha 7essada o monafi9in 3am akhor f blad lbonne annee frere"),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          height:
              dimensions.height100 + dimensions.height50 + dimensions.height15,
          child: Column(
            children: [
              Container(
                height: dimensions.height50 + dimensions.height15,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: sub,
                      child: Container(
                        padding: EdgeInsets.all(dimensions.width7),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.teal.shade200,
                        ),
                        child: Icon(Icons.remove),
                      ),
                    ),
                    Row(
                      children: [
                        bigText(
                          size: dimensions.size24,
                          text: "\$" + prix.toString(),
                        ),
                        bigText(size: dimensions.size24, text: "X"),
                        bigText(
                            size: dimensions.size24,
                            text: " " + quantity.toString()),
                      ],
                    ),
                    GestureDetector(
                      onTap: add,
                      child: Container(
                        padding: EdgeInsets.all(dimensions.width7),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.teal.shade200,
                        ),
                        child: Icon(Icons.add),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(dimensions.radius20),
                    topRight: Radius.circular(dimensions.radius20),
                  ),
                  color: Colors.grey[300],
                ),
                height: dimensions.height100,
                padding: EdgeInsets.only(
                  top: dimensions.size24,
                  bottom: dimensions.size24,
                  left: dimensions.width20,
                  right: dimensions.width20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: dimensions.height50,
                        width: dimensions.width100 - dimensions.width15,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(dimensions.radius20),
                          color: Colors.grey.shade200,
                        ),
                        child: Icon(
                          Icons.favorite,
                          color: colors.mainColor,
                        )),
                    Container(
                      width: dimensions.width200,
                      height: dimensions.height50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          dimensions.radius20,
                        ),
                        color: Colors.teal.shade200,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Center(
                          child: bigText(
                            text: "${prix} Add to Card",
                            size: dimensions.size20,
                            color: Colors.white,
                            font: FontWeight.w500,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
