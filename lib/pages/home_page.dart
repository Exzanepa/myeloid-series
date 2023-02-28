
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:projectmed/card/informationscreen.dart';
import 'package:projectmed/card/lab_analysis.dart';
import 'package:projectmed/card/my_cal.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 70,
        title: Text('Myeloid analysis',style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,)
          ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius:BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
            boxShadow: 
                    [BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 40,
                      spreadRadius: 10,
                    )
                    ],
            gradient: LinearGradient(
              colors: [Colors.white,Colors.white70],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter
            )
          ),
        ),
        
      ),
      
      backgroundColor:Colors.white ,
      body: SafeArea(
        child: Column(children: [
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              

              children: [
                Row(children: [
                  Text("My ",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                Text("Apps",style:TextStyle(fontSize: 28),),
                ],),
                
              Container(//box+
                
                
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape:BoxShape.circle ),

                child: Icon(Icons.add),
                

              )
                
              ],
            ),
          ),
          SizedBox(height: 25,),

          Container(

          
            
            alignment:FractionalOffset(0.1,0.1),
            child: Material(
            color: Colors.white,
             child:InkWell(
            
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=> Mycal() ));},
              
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Ink.image(
              image: AssetImage('lib/icons/3655592.png',),
              height: 50,
              width: 50,
              fit: BoxFit.cover,),
              
              SizedBox(height: 6,),
              
              Text(
                'calculate',
                style: TextStyle(fontSize: 20,color: Colors.black ),

            

              
              
              
                
              
              ),
              ],
            )
           ) ,)
          ),
          Container(

          
            
            alignment:Alignment(0.1, 0.1),
            
            child: Material(
            color: Colors.white,
             child:InkWell(
            
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=> Informationscreen() ));},
              
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Ink.image(
              image: AssetImage('lib/icons/3655592.png',),
              height: 50,
              width: 50,
              fit: BoxFit.cover,),
              
              SizedBox(height: 6,),
              
              Text(
                'information',
                style: TextStyle(fontSize: 20,color: Colors.black ),

            

              
              
              
                
              
              ),
              ],
            )
           ) ,)
          ),
          
          

         
          
          
          
          ],
        
        
        ),
      ),
    );
    
  }
}