import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/buy.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Appbar'),),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text('Profile Name'), accountEmail: Text('profileemail@gmail.com'),
            currentAccountPicture: CircleAvatar(child: 
            Image.asset("assets/testperson.jpg"),
            
            ),
            ),
            ListTile(
              title: Text('Profile'),
              trailing: Icon(Icons.verified_user),
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Buy()) );
              },
            ),
            ListTile(
              title: Text('Cart'),
              trailing: Icon(Icons.shopping_cart)
            ),
            ListTile(
              title: Text('About Us'),
              trailing: Icon(Icons.arrow_forward)
            ),
          ],
        ),
      ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Center(
          child: Text('Car Collection',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
      ),
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
      
      Padding(padding: EdgeInsets.all(20)),
     Card(
       margin: EdgeInsets.all(10),
       child:  OutlinedButton(
         child: Text('Buy Now'),onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Buy()));
      },),
      elevation: 15,
     )
      ],
      )
      
    );
  }
}