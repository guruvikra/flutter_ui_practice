// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class instaUI extends StatelessWidget {
  const instaUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        backgroundColor: Colors.white,
        title: Text(
          "Guru Vikram",
          style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
          ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 200,
              // color: Colors.red,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 150,
                    // color: Colors.yellow,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: NetworkImage("https://t3.ftcdn.net/jpg/06/78/09/78/360_F_678097876_9kJnFlRYGAeibsVxspqtCL9UR8giLAvF.jpg"),
                        ),
                        SizedBox(height: 5,),
                        Text("Guru Vikram",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        Text("18/Male/single",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.grey.shade700),)
                      ],
                    ),
                  ),
                  Expanded(child: Container(

                    // color: Colors.amber,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              profileDetails("10", "Posts"),
                              profileDetails("500", "Followers"),
                              profileDetails("450", "Following"),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Expanded(child: Container(
                                height: 50,
                                child: ElevatedButton(onPressed: (){}, child: Text("Follow",style: TextStyle(color: Colors.white),),style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.blue)),))),
                              SizedBox(width: 10,),
                              // ignore: sized_box_for_whitespace
                              Container(height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                border: Border.all(width: 2),
                                shape: BoxShape.circle
                              ),
                              child: Icon(Icons.arrow_downward),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),),

                ],
              ),
            ),
            Container(
              height: 100,
              // color: Colors.green,
              child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: 10,itemBuilder: (context, index) {
                return  Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      margin:EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage("https://t3.ftcdn.net/jpg/06/78/09/78/360_F_678097876_9kJnFlRYGAeibsVxspqtCL9UR8giLAvF.jpg"),fit: BoxFit.cover),
                        shape: BoxShape.circle,
                        color: Colors.green
                      ),
                    ),
                    Text("Title")
                  ],
                );
              },),
            ),
            Container(
              height: 100,
              color: Colors.blue,
            ),
            Expanded(child: Container(
              // color: Colors.brown,
              child: Container(
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context, index) {
                  return Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(color: Colors.black26,borderRadius: BorderRadius.circular(10),image: DecorationImage(image: NetworkImage("https://t3.ftcdn.net/jpg/06/78/09/78/360_F_678097876_9kJnFlRYGAeibsVxspqtCL9UR8giLAvF.jpg"),fit: BoxFit.cover)),
                    margin: EdgeInsets.all(2),
                    // color: Colors.black,
                  );
                },),
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget profileDetails(String text1,String text2){
    return Column(
      children: [
        Text(text1,style: TextStyle(fontSize: 25),),
        Text(text2,style: TextStyle(fontSize: 15),),
      ],
    );
  }
}