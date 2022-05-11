import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class Cart extends StatelessWidget {
   const Cart({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pages=[
    Container(color: Colors.green,),
    Container(color: Colors.blue,),
    Container(color: Colors.red,),
  ];

    return MaterialApp(
      home: Scaffold(body: LiquidSwipe(pages: pages),),
    );
  }
}