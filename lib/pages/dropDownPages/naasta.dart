import 'package:flutter/material.dart';

class Naasta extends StatefulWidget {
  @override
  _NaastaState createState() => _NaastaState();
}

class _NaastaState extends State<Naasta> {

  bool switch1State=true,switch2State=true,switch3State=true,switch4State=true,switch5State=true,switch6State=true;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.025, right: MediaQuery.of(context).size.width * 0.025,),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  child: Text(
                      '4 par 1 chai Free'
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  child: Text(
                      'Rs 50'
                  ),
                ),
                Flexible(
                  child: Switch(
                    value: switch1State,
                    onChanged: (bool value) {
                      setState(() {
                        switch1State = value;
                      });
                      print(value);
                    },
                  ),
                ),
              ],
            ),
            Divider(
                color:Colors.grey
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  child: Text(
                      'Missal Pav'
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  child: Text(
                      'Rs 40'
                  ),
                ),
                Flexible(
                  child: Switch(
                    value: switch2State,
                    onChanged: (bool value) {
                      setState(() {
                        switch2State = value;
                      });
                      print(value);
                    },
                  ),
                ),
              ],
            ),
            Divider(
                color:Colors.grey
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  child: Text(
                      'Spcl Chai'
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  child: Text(
                      'Rs 10'
                  ),
                ),
                Flexible(
                  child: Switch(
                    value: switch3State,
                    onChanged: (bool value) {
                      setState(() {
                        switch3State = value;
                      });
                      print(value);
                    },
                  ),
                ),
              ],
            ),
            Divider(
                color:Colors.grey
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  child: Text(
                      'Upma'
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  child: Text(
                      'Rs 25'
                  ),
                ),
                Flexible(
                  child: Switch(
                    value: switch4State,
                    onChanged: (bool value) {
                      setState(() {
                        switch4State = value;
                      });
                      print(value);
                    },
                  ),
                ),
              ],
            ),
            Divider(
                color:Colors.grey
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  child: Text(
                      'Cholle Bhature'
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  child: Text(
                      'Rs 50'
                  ),
                ),
                Flexible(
                  child: Switch(
                    value: switch5State,
                    onChanged: (bool value) {
                      setState(() {
                        switch5State = value;
                      });
                      print(value);
                    },
                  ),
                ),
              ],
            ),
            Divider(
                color:Colors.grey
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  child: Text(
                      'Poha'
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  child: Text(
                      'Rs 25'
                  ),
                ),
                Flexible(
                  child: Switch(
                    value: switch6State,
                    onChanged: (bool value) {
                      setState(() {
                        switch6State = value;
                      });
                      print(value);
                    },
                  ),
                ),
              ],
            ),
            Divider(
                color:Colors.grey
            ),
          ],
        )
    );
  }
}
