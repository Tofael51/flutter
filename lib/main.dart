import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/buy.dart';
import 'package:flutter_ui/screens/cart.dart';
import 'package:flutter_ui/screens/google_fonts.dart';
import 'package:flutter_ui/screens/login.dart';
import 'package:flutter_ui/screens/logout.dart';
import 'package:flutter_ui/screens/newbutton.dart';
import 'package:flutter_ui/screens/progress_indicator.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
   HomePage({ Key? key }) : super(key: key);

  var _currentindex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Car World'),
      flexibleSpace: Container(
     decoration: BoxDecoration(
       gradient: LinearGradient(
         colors: [
           Colors.yellow,
           Colors.red,
           Colors.blue
         ]
       )
     ),
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(
 currentIndex: _currentindex,
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
            _currentindex=index;
          });
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text('Profile Name'), accountEmail: Text('profileemail@gmail.com'),
            currentAccountPicture: CircleAvatar(child: 
            Image.asset("assets/testperson.jpg"),
            
            ),
           
            ),
           Card(child:  ListTile(
              title: Text('Profile'),
              trailing: Icon(Icons.verified_user),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Buy()));
              },
            ),),
           Card(child:  ListTile(
              title: Text('Liquid Swipe'),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Cart()) );
              },
            ),),

           Card(child:  ListTile(
              title: Text('Google Fonts'),
              trailing: Icon(Icons.arrow_forward),
               onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>GooglefontEx()) );
              },
            ),
            ),
            
          ],
        ),
      ),
      body: Body(),
    );
  }

  void setState(Null Function() param0) {}
}

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      
      Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.orange,
            Colors.white
          ]
          
        )
      ),
      child:  ListView(children: [
      
        Center(
          child: Card(child: Text('Car Collection',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
      ),elevation: 15,)
        ),
      
      Card(child: Container(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset("assets/car.jpg",
        height: 300,
        width: 300,
        fit: BoxFit.cover,
        ),
      ),
      
      ),
      elevation: 15,
     ),
      
    //   Padding(padding: EdgeInsets.all(20)),
     Card(
    //    margin: EdgeInsets.all(20),
       child:  
      
       Container(
         child: OutlinedButton(
           child: Text('Buy Now'),onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Buy()));
      },),
       ),
      elevation: 15,
     ),

    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        OutlinedButton(
         child: Text('Buy Now'),onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Buy()));
      },
      
      ),
      OutlinedButton(
         child: Text('Buy Now 2'),onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Buy()));
      },),

       OutlinedButton(
         child: Text('Buy Now 2'),onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>WithoutControllerVariable()));
      },),

       OutlinedButton(
         child: Text('Login'),onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context){return Login();})
           );
      },),
      ],
    ),

    TextButton(child: Text('Logout'),onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Logout()));
    },),

    OutlinedButton(child: Text('New Button'),onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>NewButton()));
    },)

      ],
      ),
      ),

     
      
    );
  }
}