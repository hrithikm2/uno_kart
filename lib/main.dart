import 'package:flutter/material.dart';
import 'package:uno_kart/login/login.dart';
import 'package:uno_kart/pages/components/customappbar.dart';

void main() {
  runApp(MainScreenLess());
}

class MainScreenLess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Myappbar(title: Text('Outlet Login')),
      body: Login(),
    );
  }
}
