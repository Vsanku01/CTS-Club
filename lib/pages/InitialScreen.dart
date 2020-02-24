

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:cts_club/screens/About.dart';
import 'package:cts_club/screens/Tasks.dart';
import 'package:cts_club/screens/Completed_Tasks.dart';
import 'package:cts_club/screens/timeline.dart';


class InitialScreen extends StatefulWidget {
  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {


  int pageIndex = 0;

  // List of Pages
  final AboutPage _about = AboutPage();
  final TaskPage _tasks = TaskPage();
  final TaskHistory _taskHistory =  TaskHistory();
  final TimelinePage _timelinePage = TimelinePage(title: 'Task Timeline',);
  Widget _showPage = new AboutPage();

  Widget _pageChooser (int page){
    switch(page){
      case 0:
        return _about;
        break;
      case 1:
        return _tasks;
      case 2:
        return _timelinePage;
      case 3:
        return _taskHistory;
      default:
        return new Container(
          child: new Text(
            'Page not Found',
          ),

        );
    }
  }





  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          items: <Widget>[
            Icon(Icons.explore, size: 30),
            Icon(Icons.announcement, size: 30),
            Icon(Icons.book, size: 30),
            Icon(Icons.photo_album, size: 30),
          ],
          onTap: (int tappedIndex) {
            setState(() {
              _showPage = _pageChooser(tappedIndex);
            });
          },
        ),
        body: Container(
          color: Colors.blueAccent,
          child: Center(
            child: _showPage,
          ),
        ));
  }


}
