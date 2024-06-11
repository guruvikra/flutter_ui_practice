import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visa_card_design/utils/fonts.dart';




class Mycontent extends StatelessWidget {
  const Mycontent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            right: -150,
            child: 
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
            )
          ),
          Positioned(
            left: -250,
            bottom: -480,
            child: 
            Container(
              height: 600,
              width: 600,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
            )
          ),
          Positioned(
            top: 25,
            left: 20,
            child:
            Container(
              height:30,
              child: Image.asset("assets/logo.png"),
            ) 
            ),
          Positioned(
            top: 60,
            left: 30,
            child:modifiedtext(text: "it's where you want to be" , color: Colors.grey.shade900, size: 12)
            ),
            Positioned(
            bottom: 50,
            left: 12,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                "GURU VIKRAM PUGALENTHI",
                style: GoogleFonts.sourceCodePro(
                  fontWeight:FontWeight.bold,
                  fontSize:15,
                  color:Colors.grey.shade800
                  ),
                ),
                Text(
                "1234 1234 1234 123",
                style: GoogleFonts.sourceCodePro(
                  fontWeight:FontWeight.bold,
                  fontSize:15,
                  color:Colors.grey.shade800
                  ),
                ),
            
            ],)
            ),
            Positioned(
            bottom: 35,
            right: 10,
            child:
            Container(
              height:90,
              child: Image.asset("assets/chip.png"),
            ) 
            ),
          
        ],
      ),
    );
  }
}