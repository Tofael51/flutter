import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class GooglefontEx extends StatelessWidget {
  const GooglefontEx({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text('Google Fonts using package'),
      ),
      body: FontsPage(),
      ),
    );
  }
}

class FontsPage extends StatelessWidget {
  const FontsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.red,
            Colors.yellow
          ]
          
        )
      ),
      child: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
  'Happy Coding',
  style: GoogleFonts.patrickHandSc(fontSize: 35),
),
Text(
  'Happy Coding',
  style: GoogleFonts.pacifico(fontSize: 35),
),

Text(
  'Happy Coding',
  style: GoogleFonts.tangerine(fontSize: 35),
),

Text(
  'Happy Coding',
  style: GoogleFonts.paprika(fontSize: 35),
),

Text(
  'Happy Coding',
  style: GoogleFonts.libreBaskerville(fontSize: 35),
),

Text(
  'Happy Coding',
  style: GoogleFonts.balooBhaijaan(fontSize: 35),
),
          ],
        ),
      ],)
    );
  }
}