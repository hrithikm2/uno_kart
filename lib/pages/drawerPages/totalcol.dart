import 'package:flutter/material.dart';

class TotalCollection extends StatefulWidget {
  @override
  _TotalCollectionState createState() => _TotalCollectionState();
}

class _TotalCollectionState extends State<TotalCollection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(5,0,5,0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Flexible(
            //         child: Container(
            //           width: double.maxFinite,
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(10),
            //             border: Border.all(color: Colors.black),
            //           ),
            //           child: TextFormField(
            //             decoration: InputDecoration(
            //               hintText: 'Select Start Date'
            //             )
            //           ),
            //         ),
            //       ),
            //       Flexible(
            //         child: Container(
            //           width: double.maxFinite,
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(10),
            //             border: Border.all(color: Colors.black),
            //           ),
            //           child: TextFormField(
            //               decoration: InputDecoration(
            //                   hintText: 'Select End Date'
            //               )
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // )
            Container(
                color: Colors.white,
                width: double.infinity,
                height: double.infinity,
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.425,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(5)),
                          child: FlatButton(
                            onPressed: (){},
                            child: Text('Select start date',style: TextStyle(fontSize: 10,color: Colors.grey))
                          )
                        ),
                        Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.425,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(5)),
                            child: FlatButton(
                                onPressed: (){},
                                child: Text('Select end date',style: TextStyle(fontSize: 10,color: Colors.grey))
                            )
                        ),
                      ],
                    ),

                      Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.425,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(5)),
                          child: FlatButton(
                              onPressed: (){
                                
                              },
                              child: Text('Select end date',style: TextStyle(fontSize: 10,color: Colors.grey))
                          )
                    )
                  ],
                )));
  }
}
