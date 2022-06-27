import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';
import '../font/Small_text.dart';

class IconText extends StatelessWidget {
   final IconData icon;
   final String text;
   final Color colorIcon;
  const IconText({Key? key,
    required this.icon,
    required this.text,
    required this.colorIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Icon(icon,color: colorIcon,),
        SizedBox(width: 4),
        SmallText(text:text),
        SizedBox(width: 5),
      ],
    );
  }
}
