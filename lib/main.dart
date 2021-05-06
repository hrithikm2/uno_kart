import 'package:flutter/material.dart';
import 'package:uno_kart/login/login.dart';
import 'package:uno_kart/pages/components/customappbar.dart';
import 'package:uno_kart/pages/components/date.dart';
import 'package:uno_kart/pages/drawerPages/aboutres.dart';
import 'package:uno_kart/pages/drawerPages/searchorder.dart';
import 'package:uno_kart/pages/homepage.dart';

void main() {
  runApp(MainScreenLess());
}

class MainScreenLess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage(),
      //MainScreen(),
    );
  }
}


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
 // static final height = MediaQuery.of(context).size.height;
 // static final
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Myappbar(title: Text('Outlet Login')),
      body: Login(),
    );
  }
}
