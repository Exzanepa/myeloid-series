import 'package:flutter/material.dart';
import 'package:projectmed/card/wbc_count.dart';



class Mycal extends StatelessWidget {
  const Mycal({Key? key}) : super(key: key);

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
                  Text("myeloid ",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                Text("calculate",style:TextStyle(fontSize: 28),),
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
          padding: EdgeInsets.all(32),
          child: OutlinedButton(
            style:OutlinedButton.styleFrom(
              minimumSize: Size(90, 40),
              textStyle: TextStyle(fontSize: 22),
              primary: Colors.black,
              side: BorderSide(width: 3,color: Colors.black),
            ),
            child: Text('Absolute cell count'), 
            onPressed: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=>WBCcount()));
            },
          
            
            ),
         ),


         Container(
          alignment:FractionalOffset(0.2,0.1),
          padding: EdgeInsets.all(32),
          child: OutlinedButton(
            style:OutlinedButton.styleFrom(
              minimumSize: Size(90, 40),
              textStyle: TextStyle(fontSize: 22),
              primary: Colors.black,
              side: BorderSide(width: 3,color: Colors.black),
            ),
            child: Text('WBC count'), 
            onPressed: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=>WBCcount()));
            },
          
            
            ),
         )


         

         
          
          
          
          ],
        
        
        ),
      ),
    );
    
  }
}