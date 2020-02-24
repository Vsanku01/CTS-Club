import 'package:cts_club/screens/wallpaper.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


  final List<String> _trendingImages = [
    'assets/homepic.jpeg',
    'assets/home2.jpeg',
    'assets/pic4.jpeg'
  ];
  final List<String> _popularImages = [
    'assets/testpic.jpeg',
    'assets/pic1.jpeg',
    'assets/pic2.jpeg',
    'assets/pic3.jpeg',
    'assets/pic4.jpeg',
    'assets/pic5.jpeg'
  ];



class TaskHistory extends StatefulWidget {
  @override
  _TaskHistoryState createState() => _TaskHistoryState();
}

class _TaskHistoryState extends State<TaskHistory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),

            Container(
              height: 50.0,
              width: 10.0,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),topRight: Radius.circular(10.0 ))
              ),

              child: Text('Gallery',           style: GoogleFonts.raleway(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color: Colors.white,
              ),),
            ),




            Container(
              color: Colors.blueAccent,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: CarouselSlider(
                        autoPlay: true,
                        height: 200.0,
                        items: _trendingImages.map((index) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: GestureDetector(
                                    onTap: () {

                                    },
                                    child:  Container(
                                        width: double.infinity,
                                        height: 200,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(8.0),
                                          child: FadeInImage(
                                            image: AssetImage(index),
                                            fit: BoxFit.cover,
                                            placeholder:
                                            AssetImage('assets/images/loading.gif'),
                                          ),
                                        ),
                                      ),

                                  ),
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ),
                    ListView.builder(
                      itemCount: _popularImages.length,
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {

                            },
                            child: Hero(
                              tag: 'popular$index',
                              child: Container(
                                width: double.infinity,
                                height: 200,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: FadeInImage(
                                    image: AssetImage(_popularImages[index]),
                                    fit: BoxFit.cover,
                                    placeholder:
                                    AssetImage('assets/images/loading.gif'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}








