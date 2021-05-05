import 'package:flutter/material.dart';
import 'package:uno_kart/pages/components/date.dart';

class TotalCollection extends StatefulWidget {
  @override
  _TotalCollectionState createState() => _TotalCollectionState();
}

class _TotalCollectionState extends State<TotalCollection> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DatePickerWidget(),
            FlatButton(
              onPressed: () {},
              child: Text("SEARCH"),
              color: Colors.blue,
            ),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            SizedBox(
              height: 5,
            ),
            Center(child: Text("Total Order")),
            SizedBox(
              height: 5,
            ),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(flex:8,child: Text("Total Amt")),
                Expanded(flex:7,child: Text(":")),
                Expanded(flex:0,child: Text("hao"))
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(flex:8,child: Text("Discount Amt")),
                Expanded(flex:7,child: Text(":")),
                Expanded(flex:0,child: Text("hao"))
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(flex:8,child: Text("GST Amt")),
                Expanded(flex:7,child: Text(":")),
                Expanded(flex:0,child: Text("hao"))
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(flex:8,child: Text("Packaging Amt")),
                Expanded(flex:7,child: Text(":")),
                Expanded(flex:0,child: Text("hao"))
              ],
            ),
            SizedBox(height: 20,),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            SizedBox(
              height: 5,
            ),
            Center(child: Text("Partnership Percent")),
            SizedBox(
              height: 5,
            ),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(flex:2,child: Text("Total Amt")),
                Expanded(flex:1,child: Text(":")),
                Expanded(flex:1,child: Text("Payable Amount"))
              ],
            ),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
          ],
        ));
  }
}