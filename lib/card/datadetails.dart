import 'package:flutter/material.dart';
import 'package:projectmed/card/data.dart';

class informationdetails extends StatelessWidget {
  
  final information data;
  informationdetails(this.data);

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data.title),
    ),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(data.imageUrl),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              data.year.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17.0,fontStyle: FontStyle.italic),
            ), ),
          Padding(
            padding:const EdgeInsets.all(8.0),
            child: Text(
              data.description,
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 15.0),
            ), )

        ],
      ),
    ),  
    );
    
  }
}