import 'package:flutter/material.dart';

class SelectMenu extends StatefulWidget {
  @override
  _SelectMenuState createState() => _SelectMenuState();
}

class _SelectMenuState extends State<SelectMenu> {

  bool switch1State=true,switch2State=true,switch3State=true,switch4State=true,switch5State=true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.01, right: MediaQuery.of(context).size.width * 0.01,),
        child: Text('No data found')
      ),
    );
  }
}
