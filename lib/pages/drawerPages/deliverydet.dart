import 'package:flutter/material.dart';
import 'package:uno_kart/pages/components/List.dart';

class DeliveryDetail extends StatefulWidget {
  @override
  _DeliveryDetailState createState() => _DeliveryDetailState();
}

class _DeliveryDetailState extends State<DeliveryDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: orderno.length,
        itemBuilder: (context, index){return Card(
          elevation: 2,
          child: Container(
            //height: MediaQuery.of(context).size.height/4.79,
            //  width: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "(#${orderno[index]}) COD",
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
                            child: Text(dish[index],
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
                FlatButton(
                  onPressed: () {},
                  child: Text("ORDER DELIVERD"),
                  color: Colors.red,
                ),
              ],
            ),
          ),
        );},

      ),
    );
  }
}
