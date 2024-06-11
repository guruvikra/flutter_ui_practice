import 'package:flutter/material.dart';
import 'package:visa_card_design/pages/instaUi.dart';
// import 'package:visa_card_design/pages/homePage.dart';
import 'package:visa_card_design/pages/ui.dart';
import 'package:visa_card_design/utils/colors.dart';



void main(){
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: instaUI(),
      theme:ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColor.bgcolor,
        appBarTheme: AppBarTheme(backgroundColor: Colors.green.shade300),
      ),
      
      debugShowCheckedModeBanner: false,
    );
  }
}