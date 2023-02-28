import 'package:flutter/material.dart';
import 'package:projectmed/card/data.dart';
import 'package:projectmed/card/datadetails.dart';

class Informationscreen extends StatelessWidget {
  const Informationscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('information'),
      ),
      backgroundColor: Colors.blue[800],
      body: ListView.builder(
        
        itemCount:informationList.length,
        itemBuilder: (context,index){
          information data = informationList[index];
          return Card(
            child: ListTile(
              iconColor: Colors.blue[800],
              title: Text(data.title),
              subtitle: Text(data.year.toString()),
              leading: Image.network(data.imageUrl),
              trailing: Icon(Icons.arrow_forward_rounded),
              onTap: (){
                Navigator.push(
                context,
                  MaterialPageRoute(
                     builder:(context)=> informationdetails(data)));},
            ),
          );


      } ),
    );
    
  }
}