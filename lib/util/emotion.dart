import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';



class Emotionface extends StatelessWidget {

  final String emotionface;
  const Emotionface({
    Key? key,
    required this.emotionface,
  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
              decoration: BoxDecoration(
                color: Colors.blue[600],
              borderRadius: BorderRadius.circular(12)
              ),
              padding: EdgeInsets.all(12),
              child:Center(
                child: Text(emotionface
                ,style: TextStyle(
                  fontSize: 15,color: Colors.white
                ),)),

    );
    
  }
}
