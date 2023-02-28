
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:projectmed/util/emotion.dart';
import 'package:projectmed/util/exercise_tile.dart';

import 'card/my_cal.dart';




class home3 extends StatefulWidget {
  const home3({Key? key}) : super(key: key);

  @override
  State<home3> createState() => _home3State();
}

class _home3State extends State<home3> {
  @override





  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
    
    
    backgroundColor: Colors.blue[800],
    
    


    body: SafeArea(
      child:Column(
        children: [
          //page
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hi, hello!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      ),

                    ),
                    SizedBox(height: 8 ,),
                    Text('2 October 2022',style: TextStyle(color:Colors.blue[200]),)
                  ],
                ),

                Container(
                  decoration: BoxDecoration(

                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(12)
                  ),
                  padding: EdgeInsets.all(12),
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ),


              ],
            ),
            SizedBox(height: 25,),
            //search
            Container(
              decoration: BoxDecoration(color: Colors.blue[600],
              borderRadius: BorderRadius.circular(12)
              
              
              ),
              padding: EdgeInsets.all(12),
              child:Row(
              children: [Icon(Icons.search,color: Colors.white,),
              SizedBox(width: 5,),
              Text('Search',style: TextStyle(color: Colors.white),)],
            ) ,),

            SizedBox(height: 25,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('How do you feel?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),),
                Icon(Icons.more_horiz,
                color:Colors.white,
                )
              ],
            ),
            SizedBox(height: 25,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Column(
                children: [
                  Emotionface(emotionface: 'Bad'),
                  
                  
                ],
              ),
              Column(
                children: [
                  Emotionface(emotionface: 'Fine'),
                  
                  
                ],
              ),
              Column(
                children: [
                  Emotionface(emotionface: 'Well'),
                  
                  
                ],
              ),
              Column(
                children: [
                  Emotionface(emotionface: 'Excellent'),
                  
                  
                ],
              )

            ],)
              ],
            ),
          ),
          SizedBox(height: 25.0,),

          Expanded(
            child: Container(
              padding: EdgeInsets.all(25.0),
              height: 500,
              color: Colors.grey[200],
              child: Center(
                child: Column(children: [


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Excercises',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                        
                      ),),
                        
                      Icon(Icons.more_horiz),
                    ],
                  ),
                  SizedBox(height: 20.0,)
                  ,
                Expanded(
                  child: ListView(
                    children: [
                      Exercisestile(
                        icon: Icons.favorite,
                        exercisename: 'speaking skill',
                        numberofExercises: 16,
                        Color: Colors.pinkAccent,
                      ),
                      Exercisestile(
                        icon: Icons.person,
                        exercisename: 'reading skill',
                        numberofExercises: 16,
                        Color: Colors.blue,
                      ),
                      Exercisestile(
                        icon: Icons.star,
                        exercisename: 'Writing skill',
                        numberofExercises: 16,
                        Color: Color.fromARGB(255, 227, 117, 63),
                      ),
                      Exercisestile(
                        icon: Icons.book,
                        exercisename: 'speaking skill',
                        numberofExercises: 16,
                        Color: Color.fromARGB(255, 50, 205, 79),
                      ),
                      Exercisestile(
                        icon: Icons.mail,
                        exercisename: 'speaking skill',
                        numberofExercises: 16,
                        Color: Color.fromARGB(255, 227, 58, 67),
                      ),
                      
                ])),

              ],
              ),
              ),
                    ),
          )
          






        ],
      )
    ),
    );
    
  }
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
