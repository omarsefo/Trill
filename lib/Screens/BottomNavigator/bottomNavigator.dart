import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:trill/Screens/Login/login_screen.dart';
import 'package:trill/Screens/Signup/signup_screen.dart';
import 'package:trill/Screens/Welcome/welcome_screen.dart';
import 'package:trill/Screens/home/home_screen.dart';
import 'package:trill/Screens/notification/notification.dart';
import 'package:trill/ThemeSystem.dart';

class BottomNavigator extends StatefulWidget {
  BottomNavigator({Key? key}) : super(key: key);

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
    int _currentIndex = 0;

  List<Widget> widgetOption = <Widget>[
    HomePage(),
    notification(),
    WelcomeScreen(),
    SignUpScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        color: kPrimaryColor,
        items: <Widget>[
          Icon(Icons.home, color: Theme.of(context).primaryColor, size: 30),
          Icon(Icons.notifications,color: Theme.of(context).primaryColor, size: 30),
          Icon(Icons.add, color: Theme.of(context).primaryColor, size: 30),
          Icon(Icons.person, color: Theme.of(context).primaryColor, size: 30),
        ],
        height: 70,
        index: _currentIndex,
        onTap: (index) => setState(() => this._currentIndex = index),
      ),
      body: widgetOption.elementAt(_currentIndex),
    );
  }
}