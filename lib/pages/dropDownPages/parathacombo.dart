import 'package:flutter/material.dart';

class ParathaCombo extends StatefulWidget {
  @override
  _ParathaComboState createState() => _ParathaComboState();
}

class _ParathaComboState extends State<ParathaCombo> {

  bool switch1State=true,switch2State=true,switch3State=true,switch4State=true,switch5State=true,switch6State=true,switch7State=true;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.01, right: MediaQuery.of(context).size.width * 0.01,),
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
                      'Aloo Paratha with curd'
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
                      'Paneer Paratha Dahi'
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
                      'Aloo Paneer Pyaaz Mix Paratha Dahi'
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  child: Text(
                      'Rs 60'
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
                      'Aloo Pyaaz Paratha Dahi'
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
                      'Methi Paratha Dahi'
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
                      'Family Basket Combo'
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  child: Text(
                      'Rs 470'
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  child: Text(
                      'Cheese Paratha Curd'
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  child: Text(
                      'Rs 60'
                  ),
                ),
                Flexible(
                  child: Switch(
                    value: switch7State,
                    onChanged: (bool value) {
                      setState(() {
                        switch7State = value;
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
