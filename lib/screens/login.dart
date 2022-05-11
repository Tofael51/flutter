import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
home: Scaffold(

  bottomNavigationBar: BottomNavigationBar
  (items: 
  [
    BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('Home'),
    backgroundColor: Colors.blue,
    ),

    BottomNavigationBarItem(icon: Icon(Icons.message),title: Text('Message'),
    backgroundColor: Colors.blue,
    ),
    BottomNavigationBarItem(icon: Icon(Icons.alarm),title: Text('Alarm'),),
    BottomNavigationBarItem(icon: Icon(Icons.logout),title: Text('Logout'),),
  ],
  ),

  appBar: AppBar(title: Text('Flutter Gradient'),
  flexibleSpace: Container(decoration: BoxDecoration(
    gradient: LinearGradient(colors: [
      Colors.pink,
      Colors.blue,
      Colors.orange,
    ])
  ),),
  
  ),
  
  
  body: Container(
     decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.white,
            ],

          )
        ),

    child: ListView(children: [
      Stack(
    overflow: Overflow.visible,
    alignment: Alignment.bottomCenter,
    children: [
      Container(
        
    child: Container(height: 200,width: 200,
    decoration: BoxDecoration(
      gradient: LinearGradient(colors: [
        Colors.green,
        Colors.white,
      ])
    ),
    child: Center(
      child: Text('Flutter',
      style: GoogleFonts.comicNeue(
        fontSize: 50,
      ),
      ),
    ),
  )
  ),
  Positioned(
    //  bottom: -55,
    child: Container(
    child: Container(color: Colors.yellow,height: 80,width: 80,
  )
  ),)
    ],
  ),
    ],)
  ),
    )
    );
  }
}