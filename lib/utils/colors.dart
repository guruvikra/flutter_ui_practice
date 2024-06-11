
import 'package:flutter/material.dart';

class AppColor{
  static Color bgcolor=Colors.green.shade200;


  static List<BoxShadow> shadows=[
    BoxShadow(
      color: Colors.white.withOpacity(0.5),
      spreadRadius: -2,
      offset: Offset(-2,-3),
      blurRadius: 15,
    ),
    BoxShadow(
      color: Colors.green.shade900.withOpacity(0.2),
      spreadRadius:2,
      offset: Offset(7,7),
      blurRadius: 15,
    )
  ];
}