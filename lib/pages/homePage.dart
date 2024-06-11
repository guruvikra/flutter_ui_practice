// ignore: file_names
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:visa_card_design/pages/content.dart';
import 'package:visa_card_design/utils/colors.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(15),
          // color: Colors.black,
          height: 220,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            boxShadow: AppColor.shadows,
          ),
          child: Mycontent(),
        ),
      ),


    );
  }
}