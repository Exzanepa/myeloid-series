import 'package:flutter/material.dart';
import 'package:projectmed/card/informationscreen.dart';
import 'package:projectmed/home2.dart';
import 'package:projectmed/pages/home_page.dart';

import 'package:projectmed/home3.dart';
import 'card/my_cal.dart';
import 'page2/page_cal2.dart';
import 'card/informationmodel.dart';
import 'card/mycalmodel.dart';
import 'card/refmodel.dart';


import 'provider/data_table.dart';
import 'card/tablemodel.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'nevigations';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final screens =[
    home3(),
    mycalmodel(),
    model(),
    tablemodel(),
    MyApp2()
    
    
  ];


 
  @override
  Widget build(BuildContext context) => Scaffold(
    

    
    body: IndexedStack(
      index: currentIndex,
      children: screens,
    ),
    bottomNavigationBar: BottomNavigationBar(
      
      type: BottomNavigationBarType.fixed,
      backgroundColor:Colors.white,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      iconSize: 30,
      
      // selectedFontSize: 25,
      // unselectedFontSize: 16,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: currentIndex,
      onTap: (index) => setState(() => currentIndex =index),
      items:[
        BottomNavigationBarItem(
          icon: Icon(Icons.apps),
          label: 'Home',
          backgroundColor:Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calculate),
          label: 'calculator',
          backgroundColor:Colors.red,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: 'Book',
          backgroundColor:Colors.yellow,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.table_chart),
          label: 'information',
          backgroundColor:Color.fromARGB(255, 13, 163, 93),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star),
          label: 'ref',
          backgroundColor:Color.fromARGB(255, 96, 83, 214),
        ),
      ],
      

    ),
  );
}