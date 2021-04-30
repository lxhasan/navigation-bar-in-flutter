import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/page1.dart';
import 'package:flutter_app/page2.dart';
import 'package:flutter_app/page3.dart';
import 'package:flutter_app/page4.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

//void main() {
//runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _currentindex=0;

  final pages=[
    page1(),
    page2(),
    page3(),
    page4(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        selectedFontSize: 20,
        unselectedItemColor: Colors.pink,
        currentIndex: _currentindex,
        items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.purpleAccent,
            icon: Icon((Icons.message)),
        title: Text("Message")
        ),

        BottomNavigationBarItem(
            icon: Icon((Icons.call)),
            title: Text("Call")
        ),

        BottomNavigationBarItem(
            icon: Icon((Icons.pan_tool)),
            title: Text("Pan tool")
        ),

        BottomNavigationBarItem(
            icon: Icon((Icons.radio)),
            title: Text("Radio")
        ),

      ],
      onTap: (index){
          setState(() {
            _currentindex=index;
          });
      },
      ),
      body: pages[_currentindex],
    );
  }
}

