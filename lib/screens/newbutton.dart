import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewButton extends StatefulWidget {
  const NewButton({ Key? key }) : super(key: key);

  @override
  _NewButtonState createState() => _NewButtonState();
}

class _NewButtonState extends State<NewButton> {


  int _page = 0;
   GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Appbar',
        style: GoogleFonts.pacifico(),
        ),centerTitle: true,),
        drawer: Drawer(
          
          child: ListView(children: [
            UserAccountsDrawerHeader(accountName: Text('Name'), accountEmail: Text('name@gmail.com'),
            currentAccountPicture: Image.asset("assets/persons.jpeg"),
            ),
            ListTile(title: Text('Home'),),
            ListTile(title: Text('Profile'),),
            ListTile(title: Text('Logout'),),
            
          ]
          ),
        ),

  //     
  
   bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          items: <Widget>[
            Icon(Icons.home, size: 25),
            Icon(Icons.list, size: 25),
            Icon(Icons.compare_arrows, size: 25),
          ],
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: Container(
          color: Colors.blueAccent,
          child: Center(
            child: Column(
              children: <Widget>[
                Text(_page.toString(), textScaleFactor: 10.0),
                ElevatedButton(
                  child: Text('Go To Page of index 1'),
                  onPressed: () {
                    //Page change using state does the same as clicking index 1 navigation button
                    final CurvedNavigationBarState? navBarState =
                        _bottomNavigationKey.currentState;
                    navBarState?.setPage(1);
                  },
                )
              ],
            ),
          ),
        )
      )
    );
  }
}