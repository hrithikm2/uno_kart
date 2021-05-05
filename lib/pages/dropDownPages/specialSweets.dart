import 'package:flutter/material.dart';

class SpecialSweets extends StatefulWidget {
  @override
  _SpecialSweetsState createState() => _SpecialSweetsState();
}

class _SpecialSweetsState extends State<SpecialSweets> {

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
                    'Moong Dal Halwa'
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
