import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/buy.dart';
import 'package:flutter_ui/screens/buynow.dart';
import 'package:flutter_ui/screens/newscreen.dart';
import 'package:google_fonts/google_fonts.dart';

class Logout extends StatefulWidget {
  const Logout({ Key? key }) : super(key: key);

  @override
  _LogoutState createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {

  final urlImages=[
'https://st2.depositphotos.com/1000393/6507/i/950/depositphotos_65076917-stock-photo-hacker-and-terrorism-fight.jpg'
'https://st2.depositphotos.com/1000393/6507/i/950/depositphotos_65076917-stock-photo-hacker-and-terrorism-fight.jpg'
'https://usercontent.one/wp/zonknews.com/wp-content/uploads/2021/08/hacker-at-night.jpg'
  ];

  var _currentindex1=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
        appBar: AppBar(title: Text('Logout'),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Name',
                // style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.red),
                style: GoogleFonts.pacifico(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
                ),
                
                 accountEmail: Text('name@gmail.com'),
                 currentAccountPicture: CircleAvatar(
                   backgroundImage: AssetImage("assets/hacker.jpg"),
                 ),
                 )
            ],
          ),
        ),
          body: Container(
          // decoration: BoxDecoration(
          //   gradient: LinearGradient(colors: [Colors.blue,Colors.yellow])
          // ),
          height: double.infinity,
          width: double.infinity,
          child: ListView(children: [
      
        Text('Hacker!!!',
          style: GoogleFonts.pacifico(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),
          ),
        //  Image.asset(("assets/hacker.jpg"),height: 300,width: double.infinity,fit: BoxFit.fill,)
      
        // CarouselSlider.builder(itemCount: urlImages.length, itemBuilder: (context,index,realindex){
        //   final urlImage=urlImages[index];
        //   return BuildImage(urlImage,index);
          
        // }, options: CarouselOptions(autoPlay: true,
        // height: 300
        // )),

        Stack(
          children: [
            Container(
            height: 300,
            width: 400,
            color: Colors.blue,
            ),
            Positioned(
              top: 20,
              left: 20,
              child: Container(height: 100,
            width: 150,
            child: Center(child: Text('Red Container',
            style: GoogleFonts.paprika(fontSize: 25)
            )
            ),
            color: Colors.red,),),
            Positioned(
              top: 20,
              right: 20,
              child: Container(
              height: 100,
              width: 150,
               child: Center(child: Text('Green Container',style: TextStyle(fontSize: 30),)),
              color: Colors.green
            ),),

            Positioned(
              height: 100,
              width: 120,
              bottom: 20,
              left: 130,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/java.jpg"),
              )
              )
            
          ],
        ),

        Stack(
          children: [
            Image.asset("assets/car.jpg"),
            Positioned(
              bottom: 50,
              right: 40,
              child: TextButton(
                child: Text('Buy Now',
                style: GoogleFonts.pacifico(fontSize: 30,
                color: Colors.white
                ),
                ),
                onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>NewScreen()));
                  
                },
              )
            )
          ],
        ),
        Text('Down'),
         Stack(
          children: [
            Image.asset("assets/car.jpg"),
            Positioned(
              bottom: 50,
              right: 40,
              child: TextButton(
                child: Text('Buy Now',
                style: GoogleFonts.pacifico(fontSize: 30,
                color: Colors.white
                ),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Buy()));
                },
              )
            )
          ],
        )
          ],)
          
          ),
        bottomNavigationBar: BottomNavigationBar(
 currentIndex: _currentindex1,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.message),
          title: Text('Message'),
          backgroundColor: Colors.red
          ),
           BottomNavigationBarItem(icon: Icon(Icons.card_travel),
          title: Text('Card'),
          backgroundColor: Colors.red
          ),
           BottomNavigationBarItem(icon: Icon(Icons.search),
          title: Text('Search'),
          backgroundColor: Colors.red
          ),
           BottomNavigationBarItem(icon: Icon(Icons.rv_hookup_sharp),
          title: Text('hookup'),
          backgroundColor: Colors.red
          ),
        ],
        onTap: (index)
        {
          setState((){
            _currentindex1=index;
          });
        },
      ),
        ),
      ),
    );
  }

  Widget BuildImage(String urlImage, int index) => 
   Container(
     height: 300,
    margin: EdgeInsets.symmetric(horizontal: 5),
    color: Colors.grey,
   child: Image.asset(urlImage,
   fit: BoxFit.cover
   ),
  
  );
}