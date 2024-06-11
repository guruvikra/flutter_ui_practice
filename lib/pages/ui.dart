// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import "dart:ffi";

import "package:flutter/material.dart";
import "package:flutter/widgets.dart";




class SimpleUI extends StatefulWidget {
  const SimpleUI({super.key});

  @override
  State<SimpleUI> createState() => _SimpleUIState();
}

class _SimpleUIState extends State<SimpleUI> {
  int _likes=0;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var h=MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    var w=MediaQuery.of(context).size.width;

    
    return Scaffold(
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 400,
                    // color: Colors.yellow.shade600,
                    child:Stack(
                      children: [
                        
                        Positioned(
                          child: Container(
                            height: 350,
                            decoration: BoxDecoration(
                              // color: Colors.red,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                
                                image: NetworkImage("https://tiermaker.com/images/chart/chart/cartoon-characters-i-want-to-punch-in-the-face-full-748002/41cuqnjf5klacjpg.png"))
                            ),
                          ),
                        ),
                        const Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage("https://t3.ftcdn.net/jpg/06/78/09/78/360_F_678097876_9kJnFlRYGAeibsVxspqtCL9UR8giLAvF.jpg"),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 20,
                          child: InkWell(
                            onTap: () {
                              // Add your button press logic here
                              print("Button pressed");
                            },
                            child: Icon(Icons.arrow_back),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          right: 20,
                          child: InkWell(
                            onTap: () {
                              // Add your button press logic here
                              setState(() {
                                _likes++;
                                print(_likes);
                              });
                            },
                            child: Icon(Icons.favorite_border),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              // color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Chennai City Tour Designers",
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),
                    ),
                  Text(
                    "This is the random disxription of the topic",
                    style: TextStyle(fontSize: 15,color: Colors.grey),
                  
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              // color: Colors.blueGrey,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  rowContent("$_likes", Icons.favorite),
                  rowContent("34", Icons.upload),
                  rowContent("82", Icons.message),
                  rowContent("295", Icons.face),
                  
                ],
              ) ,
            ),
            Divider(),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget rowContent(String text,IconData icon){
    return Row(
            children: [
              Text(text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(width: 5,),
              Icon(icon)

            ],
    );
 
  }
}