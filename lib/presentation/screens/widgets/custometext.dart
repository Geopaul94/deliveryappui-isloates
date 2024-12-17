import 'package:flutter/material.dart';
import 'package:moch_api/utilities/constants/constants.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final TextDecoration decoration;
  final FontStyle fontStyle;
  final TextDecoration textDecoration;
  final String fontFamily;

  const CustomText({
    super.key, 
    required this.text,
    this.fontSize = 14.0,
    this.color = maincolor,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.start,
    this.decoration = TextDecoration.none,
    this.fontStyle = FontStyle.normal,
    this.textDecoration = TextDecoration.none,
    this.fontFamily = 'Quicksand', 
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        decoration: decoration,
        fontStyle: fontStyle,
        fontFamily: fontFamily,
      ),
    );
  }
}


