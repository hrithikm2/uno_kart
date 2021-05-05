import 'package:flutter/material.dart';

class Test2 extends StatefulWidget {
  @override
  _Test2State createState() => _Test2State();
}

class _Test2State extends State<Test2> {

  bool switch1State=true,switch2State=true,switch3State=true,switch4State=true,switch5State=true;
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
                      'Test2'
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  child: Text(
                      'Rs 58'
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
          ],
        )
    );
  }
}
