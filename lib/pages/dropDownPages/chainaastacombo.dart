import 'package:flutter/material.dart';

class ChaiNaasta extends StatefulWidget {
  @override
  _ChaiNaastaState createState() => _ChaiNaastaState();
}

class _ChaiNaastaState extends State<ChaiNaasta> {

  bool switch1State=true,switch2State=true,switch3State=true,switch4State=false;
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
                      'Upma Chai Combo'
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  child: Text(
                      'Rs 45'
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
                      'Poha Chai Combo'
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  child: Text(
                      'Rs 45'
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
                      'Poha Upma Chai Combo'
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  child: Text(
                      'Rs 45'
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
            ), Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  child: Text(
                      'Mix Match Combo (2 Poha, 2 Upma, 2 Cholle Bhature, 2 Missal Pav, 2 Aloo Paratha Dahi, 5 Chai)'
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
          ],
        )
    );
  }
}
