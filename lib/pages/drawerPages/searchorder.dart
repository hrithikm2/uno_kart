import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uno_kart/pages/components/date.dart';

class SearchOrder extends StatefulWidget {
  @override
  _SearchOrderState createState() => _SearchOrderState();
}

class _SearchOrderState extends State<SearchOrder> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DatePickerWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(left: 70),
                        child: Divider(
                          color: Colors.black,
                          height: 0,
                          thickness: 2,
                        ))),
                Text('OR'),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(right: 70),
                        padding: EdgeInsets.all(10),
                        child: Divider(
                          color: Colors.black,
                          height: 0,
                          thickness: 2,
                        ))),
              ],
            ),
            SizedBox(height: 5),
            Container(
              height: 40,
              child: TextFormField(
                //textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: new OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                  //filled: true,
                  //hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "Enter Order Id",
                ),
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Text("SEARCH"),
              color: Colors.blue,
            ),
            SizedBox(height: 5,),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(padding: EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "(#6711) COD",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Menu Details: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                            Expanded(
                                flex: 2,
                                child: Text("2 Methi Paratha Dahi",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ))),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Amount After Share Deduction : Rs. 66',
                            style: TextStyle(color: Colors.green,
                              fontWeight: FontWeight.bold,
                            )),
                        Text('Unokart Share : Rs. 14 @ 18%',
                            style: TextStyle(color: Colors.green,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(height: 5,),
                        Text('Date n Time : 10:21:50',
                            style: TextStyle(color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text("ORDER DELIVERD"),
                    color: Colors.red,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
