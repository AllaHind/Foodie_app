import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodie_app/font/Big_text.dart';
import 'package:foodie_app/colors.dart';
import 'package:foodie_app/font/Small_text.dart';

import 'Sliders.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    return Scaffold(
      body: Column(
        children: [
          //the header
          Container(
            child: Container(
              margin: EdgeInsets.only(top:40,bottom:10),
              padding: EdgeInsets.only(right:20,left:30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "Morocco",color:Appcolors.mainColor),
                    Row(
                      children: [
                        SmallText(text: "Casablanca",color:Colors.grey),
                        Icon(Icons.arrow_drop_down_rounded)

                      ],
                    )
                    ],
                  ),
                  Center(
                    child: Container(
                      height: 40,
                      width: 40,
                      child: Icon(Icons.search,color:Colors.white),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                       color:Appcolors.mainColor,
                      ),

                    ),
                  )
                ],
              ),
            ),
          ),
          // the body
          Slid(),
        ],
      ),
    );

  }
}
