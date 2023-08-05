// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:e_commerce_app/utilities/actionIcons.dart';
import 'package:e_commerce_app/utilities/dimensions.dart';
import 'package:e_commerce_app/utilities/expandable.dart';
import 'package:e_commerce_app/utilities/foodColumn.dart';
import 'package:flutter/material.dart';
import '../styles/bigText.dart';

class FoodView extends StatefulWidget {
  FoodView({Key? key}) : super(key: key);

  @override
  State<FoodView> createState() => _FoodViewState();
}

class _FoodViewState extends State<FoodView> {
  int quantity = 1;
  double prix = 0.08;
  void back() {
    Navigator.pop(context);
  }

  void add() {
    setState(() {
      quantity++;
      prix = prix + 0.08;
    });
  }

  void sub() {
    setState(() {
      if (quantity != 0 && prix != 20) {
        quantity--;
        prix = prix - 0.08;
      }
    });
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                width: double.maxFinite,
                height: dimensions.height300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(image[2]),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: dimensions.height15,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: dimensions.width15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: back,
                      child: ActionIcons(
                        icon: Icons.arrow_back,
                        backColor: Colors.grey.shade100,
                      ),
                    ),
                    ActionIcons(
                      icon: Icons.shopping_cart_outlined,
                      backColor: Colors.grey.shade100,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: dimensions.height300 - dimensions.height13,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(
                  left: dimensions.width20,
                  top: dimensions.height20,
                  right: dimensions.width10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(dimensions.radius15),
                    topRight: Radius.circular(dimensions.radius15),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FoodColumn(
                      foodName: foodName[0],
                    ),
                    SizedBox(
                      height: dimensions.height13,
                    ),
                    bigText(
                      text: "Introduction",
                      size: dimensions.size20,
                      color: Colors.grey.shade600,
                    ),
                    SizedBox(height: dimensions.height10),
                    Expanded(
                      child: Container(
                        child: expandable(
                          decription:
                              "4 d sbah o makanjawbch ikma mat ikma dawh tsenit bladi 7it galo ghatsayb bateau mcha o tba3to 3aym mama ma tkhafich yeah     tla3 z3af nfss nhar kolchi ki t3awd kolchi baghi bach yfi9 la bzzf nfss doza nfss lmadi nfss shabi gol li bimn nti9 ch7al d lbinga khessatni bach nfi9 sekran o baghi nzid nskr b rii9 ch7al mn mera wesatni mi ela ch7al mn tri9 3amra gha 7essada o monafi9in 3am akhor f blad lbonne annee frere4 d sbah o makanjawbch ikma mat ikma dawh tsenit bladi 7it galo ghatsayb bateau mcha o tba3to 3aym mama ma tkhafich yeah     tla3 z3af nfss nhar kolchi ki t3awd kolchi baghi bach yfi9 la bzzf nfss doza nfss lmadi nfss shabi gol li bimn nti9 ch7al d lbinga khessatni bach nfi9 sekran o baghi nzid nskr b rii9 ch7al mn mera wesatni mi ela ch7al mn tri9 3amra gha 7essada o monafi9in 3am akhor f blad lbonne annee frere4 d sbah o makanjawbch ikma mat ikma dawh tsenit bladi 7it galo ghatsayb bateau mcha o tba3to 3aym mama ma tkhafich yeah     tla3 z3af nfss nhar kolchi ki t3awd kolchi baghi bach yfi9 la bzzf nfss doza nfss lmadi nfss shabi gol li bimn nti9 ch7al d lbinga khessatni bach nfi9 sekran o baghi nzid nskr b rii9 ch7al mn mera wesatni mi ela ch7al mn tri9 3amra gha 7essada o monafi9in 3am akhor f blad lbonne annee frere4 d sbah o makanjawbch ikma mat ikma dawh tsenit bladi 7it galo ghatsayb bateau mcha o tba3to 3aym mama ma tkhafich yeah     tla3 z3af nfss nhar kolchi ki t3awd kolchi baghi bach yfi9 la bzzf nfss doza nfss lmadi nfss shabi gol li bimn nti9 ch7al d lbinga khessatni bach nfi9 sekran o baghi nzid nskr b rii9 ch7al mn mera wesatni mi ela ch7al mn tri9 3amra gha 7essada o monafi9in 3am akhor f blad lbonne annee frere4 d sbah o makanjawbch ikma mat ikma dawh tsenit bladi 7it galo ghatsayb bateau mcha o tba3to 3aym mama ma tkhafich yeah     tla3 z3af nfss nhar kolchi ki t3awd kolchi baghi bach yfi9 la bzzf nfss doza nfss lmadi nfss shabi gol li bimn nti9 ch7al d lbinga khessatni bach nfi9 sekran o baghi nzid nskr b rii9 ch7al mn mera wesatni mi ela ch7al mn tri9 3amra gha 7essada o monafi9in 3am akhor f blad lbonne annee frere4 d sbah o makanjawbch ikma mat ikma dawh tsenit bladi 7it galo ghatsayb bateau mcha o tba3to 3aym mama ma tkhafich yeah     tla3 z3af nfss nhar kolchi ki t3awd kolchi baghi bach yfi9 la bzzf nfss doza nfss lmadi nfss shabi gol li bimn nti9 ch7al d lbinga khessatni bach nfi9 sekran o baghi nzid nskr b rii9 ch7al mn mera wesatni mi ela ch7al mn tri9 3amra gha 7essada o monafi9in 3am akhor f blad lbonne annee frere4 d sbah o makanjawbch ikma mat ikma dawh tsenit bladi 7it galo ghatsayb bateau mcha o tba3to 3aym mama ma tkhafich yeah     tla3 z3af nfss nhar kolchi ki t3awd kolchi baghi bach yfi9 la bzzf nfss doza nfss lmadi nfss shabi gol li bimn nti9 ch7al d lbinga khessatni bach nfi9 sekran o baghi nzid nskr b rii9 ch7al mn mera wesatni mi ela ch7al mn tri9 3amra gha 7essada o monafi9in 3am akhor f blad lbonne annee frere",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(dimensions.radius20),
            topRight: Radius.circular(dimensions.radius20),
          ),
          color: Colors.grey[300],
        ),
        height: dimensions.height120,
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
              width: dimensions.width100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(dimensions.radius20),
                color: Colors.grey.shade200,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: sub,
                    child: Icon(
                      Icons.remove,
                      color: Colors.grey,
                    ),
                  ),
                  bigText(
                    text: quantity.toString(),
                    size: dimensions.size20,
                    font: FontWeight.w600,
                    color: Colors.grey,
                  ),
                  GestureDetector(
                    onTap: add,
                    child: Icon(
                      Icons.add,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: dimensions.width200 + dimensions.width15,
              height: dimensions.height50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  dimensions.radius20,
                ),
                color: Colors.teal.shade200,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Center(
                  child: bigText(
                    text: "\$ ${prix.toStringAsFixed(2)} Add to Card",
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
    );
  }
}
