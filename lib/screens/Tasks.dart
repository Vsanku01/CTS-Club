import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      child: ListView(
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.only(top: 50.0,left: 10.0),
            child: Text(
              'Ongoing Tasks (February)',
              style: GoogleFonts.raleway(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.white,
              ),
            ),
          ),

          Container(
            height: screenHeight,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                _buildCard('Club Mobile Application - 21-02-2020','assets/mobile.png','To create and maintain Mobile App for college \n student club  team individually to place  \n student club updates every month.'),
                SizedBox(
                  height: 20.0,
                ),
                _buildCard('Website Development  - 22-02-2020','assets/develop.png','Create and maintain a website  for Student Club.'),
                SizedBox(
                  height: 20.0,
                ),
                _buildCard('PowerPoint Presentation - 19-02-2020','assets/tasks.png','Presentation on Latest Technology Trends'),

                SizedBox(
                  height: 20.0,
                ),
                _buildCard('Coding Round - 20-02-2020 ','assets/coding.png','Organise an Online Coding Challenge for all \n club Members.'),
                SizedBox(
                  height: 20.0,
                ),
                _buildCard('Blog Site - 21-02-2020 ','assets/blog.png','Create and maintain a blog for Student Club Team.'),
                SizedBox(
                  height: 20.0,
                ),
                _buildDuplicateCard(),

              ],
            ),
          )
        ],
      ),

    );
  }

  Widget _buildCard(String activityName ,String imgPath,String taskDescription) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 300.0,
          height: 350.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            color: Colors.white,
          ),
          child: Stack(
            children: <Widget>[
              Container(
                height: 200.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),
                  image: DecorationImage(
                    image: AssetImage(imgPath),
                    fit: BoxFit.cover,
                  )
                ),
              ),
              SizedBox(

                height: 10.0,
              ),
              Positioned(
                top: 200.0,
                left: 10,
                child: Text(
                  activityName,
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
              SizedBox(
                height: 10.0,
              ),
              Positioned(
                top: 250.0,
                left: 10.0,
                child:   Text('''$taskDescription''',maxLines: 20, style: GoogleFonts.robotoSlab(fontSize: 16.0 ,fontWeight:FontWeight.bold,color: Colors.black) , )
              )

            ],
          ),


        ),
      ),
    );
  }


  Widget _buildDuplicateCard() {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 300.0,
          height: 350.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            color: Colors.blueAccent,
          ),
          child: Stack(
            children: <Widget>[
              Container(
                height: 200.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),
                    image: DecorationImage(
                      image: AssetImage(""),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              Positioned(
                top: 200.0,
                left: 10,
                child: Text(
                  "",
                  style: GoogleFonts.aclonica(
                    fontSize: 20.0,
                  ),),
              )
            ],
          ),


        ),
      ),
    );
  }





}
