import 'package:flutter/material.dart';

class AboutRestro extends StatefulWidget {
  @override
  _AboutRestroState createState() => _AboutRestroState();
}

class _AboutRestroState extends State<AboutRestro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(child: Image.asset("res/chai.png")),
            SizedBox(
              height: 10,
            ),
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text("Restro Name :"),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "    Chai Biskoot",
                          style:
                              TextStyle(color: Color(0xffcf91ff), fontSize: 17),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Restro Address :"),
                        SizedBox(
                          height: 10,
                        ),
                        Text("    Shop 15, park city"),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Restro Type :"),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "    Veg",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Owner Name :"),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "    Varsha CHabriya",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Restro Time :"),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("07:15:00"),
                            Text("11:00:00"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  FlatButton(
                    onPressed: () {
                      _showMyDialog();
                    },
                    child: Text(
                      "ON",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Color(0xffcf91ff),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      //barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          //title: Text('Are you sure?'),
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Image.asset(
                  "res/icalert.png",
                  scale: 2,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Are you sure?',
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Do you really want to change status?'),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                        ),
                        color: Color(0xffcf91ff),
                        child: Text(
                          'No',
                          style: (TextStyle(
                            color: Colors.white,
                          )),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),

                        ),
                        color: Color(0xffcf91ff),
                        child: Text(
                          'Yes',
                          style: (TextStyle(
                            color: Colors.white,
                          )),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
