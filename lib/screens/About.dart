import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 50.0,left: 10.0),
            child: Text(
              'About Us',
              style: GoogleFonts.raleway(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color: Colors.white,
              ),
            ),
          ),



          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 20.0,
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              child: Container(
                height: 300.0,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  image: DecorationImage(
                    image: AssetImage('assets/homepic.jpeg'),
                    fit: BoxFit.cover,
                  )
                ),

              ),
            ),
          ),


         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Text(
               'We the students of Cognizant Student club believe in practical learning and aim for all round development of a student in terms of lifelong learning, career development and professional networking along with technical skills.',
             style: GoogleFonts.poppins(
               fontSize: 20.0,
               color: Colors.white,

             ),
           ),
         )

        ],
      ),

    );
  }







}
