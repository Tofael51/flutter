import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Buy extends StatefulWidget {
  const Buy({ Key? key }) : super(key: key);

  @override
  _BuyState createState() => _BuyState();
}

class _BuyState extends State<Buy> {
  final urlImages=[
    'https://images.unsplash.com/photo-1634448712472-6e13816126aa?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80'
    'https://images.unsplash.com/photo-1611702560411-7c969572b085?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'
    'https://images.unsplash.com/photo-1637176473226-4772830471b5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1228&q=80'
    'https://images.unsplash.com/photo-1605757960234-e0ecaf6b3b56?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=465&q=80'
    'https://images.unsplash.com/photo-1637176473226-4772830471b5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1228&q=80'
    'https://images.unsplash.com/photo-1567808291548-fc3ee04dbcf0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slider Image'),),
      body: Center(
        child: CarouselSlider.builder(       
          itemCount: urlImages.length, 
        itemBuilder: (context,index,realindex){
          final urlImage = urlImages[index];

          return buildImage(urlImage, index);
        }, 
        options: CarouselOptions(
          height: 400.0,
          autoPlay: true
        ),      
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => 
  
  Container(
    margin: EdgeInsets.symmetric(horizontal: 5),
    color: Colors.grey,
   child: Image.network(urlImage,
   fit: BoxFit.cover
   ),
  
  );
}