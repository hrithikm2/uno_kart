import 'package:flutter/material.dart';

class CancelOrder extends StatefulWidget {
  @override
  _CancelOrderState createState() => _CancelOrderState();
}

class _CancelOrderState extends State<CancelOrder> {
  Widget title1;
  @override
  void initState() {
    super.initState();
    setState(() {
      title1 = Text('Cancel Order');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Cancel Order'));
  }
}
