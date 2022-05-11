import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: Container(
       child: Center(
         child: ElevatedButton(child: Text('Click'),onPressed: (){
           showModalBottomSheet(context: context, builder: (context){return Container(
             height: 350,
             color: Colors.blue,
             child: ListTile(title: Text('Home'),trailing: Icon(Icons.home),),
           );});
         },),
       ),
      ), 
      ),
    );
  }
}