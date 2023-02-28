// import 'dart:html';

// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:projectmed/nav_page/home.dart';
// import 'package:projectmed/util/emotion.dart';
// import 'package:projectmed/util/exercise_tile.dart';

// import 'card/my_cal.dart';
// import 'nav_page/chat_page.dart';
// import 'nav_page/feed_page.dart';



// class MainPage extends StatefulWidget {
//   const MainPage({super.key});
  
//   @override
//   State<MainPage> createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   int currentIndex = 0;
//   final screens =[
//     Home(),
//     Chat(),
//     Feed(),
//     Profile(),
    
    
//   ];


 
//   @override
//   Widget build(BuildContext context) => Scaffold(
//     appBar: AppBar(
//       title: Text("myeloid analysis"),
//       centerTitle: true,
//       flexibleSpace: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.grey,Colors.black],
//             begin: Alignment.bottomCenter,
//             end: Alignment.topCenter
//           )
//         ),
//       ),
//     ),

    
//     body: IndexedStack(
//       index: currentIndex,
//       children: screens,
//     ),
//     bottomNavigationBar: BottomNavigationBar(
      
//       type: BottomNavigationBarType.fixed,
//       backgroundColor:Colors.white,
//       selectedItemColor: Colors.black,
//       unselectedItemColor: Colors.grey,
//       iconSize: 30,
      
//       // selectedFontSize: 25,
//       // unselectedFontSize: 16,
//       showSelectedLabels: false,
//       showUnselectedLabels: false,
//       currentIndex: currentIndex,
//       onTap: (index) => setState(() => currentIndex =index),
//       items:[
//         BottomNavigationBarItem(
//           icon: Icon(Icons.apps),
//           label: 'Home',
//           backgroundColor:Colors.blue,
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.menu_book),
//           label: 'Feed',
//           backgroundColor:Colors.red,
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.message),
//           label: 'Chat',
//           backgroundColor:Colors.yellow,
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.person),
//           label: 'Profile',
//           backgroundColor:Colors.yellow,
//         ),
//       ],
      

//     ),
//   );
// }
    