import 'package:flutter/material.dart';

class Test3 extends StatefulWidget {
  @override
  _Test3State createState() => _Test3State();
}

class _Test3State extends State<Test3> {

  bool switch1State=true;
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
                      'Test3'
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
