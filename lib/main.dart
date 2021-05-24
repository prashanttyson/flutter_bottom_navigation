import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation/homePage.dart';
import 'package:flutter_bottom_navigation/settingsPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyBottomNav(),
    );
  }
}

class MyBottomNav extends StatefulWidget {
  const MyBottomNav({Key key}) : super(key: key);

  @override
  _MyBottomNavState createState() => _MyBottomNavState();
}

class _MyBottomNavState extends State<MyBottomNav> {

  int _currentIndex=0;
  final List<Widget> _children = [
    HomePage(),
    SettingsPage(),
  ];

  void onTappedBar(int index){
setState(() {
  _currentIndex = index;
});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
            onTap:onTappedBar,
            items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('home')),
    BottomNavigationBarItem(icon: Icon(Icons.settings),title: Text('settings'),),
    ]
    )
    ,
    );
  }
}
