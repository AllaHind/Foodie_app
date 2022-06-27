import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodie_app/font/Small_text.dart';

import '../colors.dart';
import '../font/Big_text.dart';
import 'Icon_Text.dart';

class Slid extends StatefulWidget {
  const Slid({Key? key}) : super(key: key);

  @override
  State<Slid> createState() => _SlidState();
}

class _SlidState extends State<Slid> {
  PageController pageController=new PageController(viewportFraction: 0.8);
  var current_page=0.0;
  var scale_factor=0.8;
  @override
  void initState()
  {
    super.initState();
    pageController.addListener(() {  setState(() {
      current_page= pageController.page!;

      print("The current Page is "+current_page.toString());

    });});

  }
  void dispose()
  {
    pageController.dispose();
  }


  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
      Container(

      height: 320,
      child: PageView.builder(
          controller: pageController,
          itemCount: 4,
          itemBuilder: (context,position){
            return _buildPageItem(position);
          }),
    ),
    new DotsIndicator(
      dotsCount: 4,
      position: current_page,
      decorator: DotsDecorator(
        activeColor: Appcolors.mainColor
      ),
    )
      ],
    );
  }
  Widget _buildPageItem(int index){
    /*Matrix4 matrix =new Matrix4.identity();
    if(index==current_page.floor()){
    var currScale=1-(current_page-index)*(1-scale_factor);
    var currTrans=230*(1-currScale)/2;
    matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
    else if(index==current_page.floor()+1){
    var currscale =scale_factor+(current_page-index+1)+(1-scale_factor);
    var currTrans=230*(1-currscale)/2;
    matrix=Matrix4.diagonal3Values(1, currscale, 1);
    matrix = Matrix4.diagonal3Values(1, currscale, 1)..setTranslationRaw(0, currTrans, 0);

    } else if(index==current_page.floor()-1){
      var currscale=1-(current_page-index)*(1-scale_factor);
    matrix=Matrix4.diagonal3Values(1, currscale,1);
    matrix = Matrix4.diagonal3Values(1, currscale, 1)..setTranslationRaw(0, currTrans, 0);

    }

     */
    return Stack(
        children: [
        Container(
        height: 230,
        margin: EdgeInsets.only(left: 13,right: 13),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: index.isEven?AssetImage(
                  'assets/crispy.jpg'):AssetImage(
                  'assets/food1.jpg'),
              fit: BoxFit.cover,
            ),

            borderRadius: BorderRadius.circular(30)
        ),
      ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              margin: EdgeInsets.only(left: 28,right: 28,bottom: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                boxShadow:[ BoxShadow(color: Color(0xFFe8e8e8),blurRadius: 5.0,offset:Offset(0,5)),
                ]
              ),
              child:Container(
      padding: EdgeInsets.only(top:10,left: 10,right: 10),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BigText(text: "Chinesse side",size: 17),
            SizedBox(height: 10),
            Row(
              children: [
                Wrap(
                  children:
                    List.generate(5, (index) =>Icon(Icons.star,color: Appcolors.mainColor,size: 15,)),
                ),
                SizedBox(width: 10),
                SmallText(text: "4.5"),
                SizedBox(width: 10),
                SmallText(text: "1000 comments"),

              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconText(icon:Icons.circle_sharp,text:"normal",colorIcon:Appcolors.iconColor1),
                IconText(icon:Icons.location_on_sharp,text:"1.2Km",colorIcon:Appcolors.mainColor),
                IconText(icon:Icons.access_time_outlined,text:"30min",colorIcon:Colors.redAccent),
              ],
            )
          ],

      )
              ),
            ),
          ),

        ],
      );
    

  }




}
