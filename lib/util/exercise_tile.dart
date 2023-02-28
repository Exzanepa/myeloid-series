import 'package:flutter/material.dart';
class Exercisestile extends StatelessWidget {

  final icon;
  final String exercisename;
  final int numberofExercises;
  final Color;


  const Exercisestile({
    
    Key? key,
    required this.icon,
    required this.exercisename,
    required this.numberofExercises,
    required this.Color,

  
  
  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:12.0),
      child: Container(
                    
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:BorderRadius.circular(16)),
                    

                    child:Row(
                        
                        mainAxisAlignment: MainAxisAlignment.spaceBetween
                        ,children: [
                        Row(children: [
                        Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Container(
                                padding: EdgeInsets.all(16),
                                color: Color,
                                child: Icon(icon,
                                color: Colors.white,),
                              ),
                            )
                            
                          ],
                        ),
                        SizedBox(width:12 ,),
                        
                        Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text(exercisename,
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16) ,),
                          SizedBox(height: 5,),

                          Text(numberofExercises.toString()+' exercise',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          color: Colors.grey
                          ,fontSize: 16) ,)
                          
                        ],
                        ),
                        ],),
                      Icon(Icons.more_horiz)


                      ],
                    )
                  




                ),
    );
    
  }
}