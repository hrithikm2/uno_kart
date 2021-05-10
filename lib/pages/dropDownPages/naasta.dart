import 'package:flutter/material.dart';

class Naasta extends StatefulWidget {
  @override
  _NaastaState createState() => _NaastaState();
}

class _NaastaState extends State<Naasta> {

  bool switch1State=true,switch2State=true,switch3State=true,switch4State=true,switch5State=true,switch6State=true;
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
                      '4 par 1 chai Free'
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
                      'Missal Pav'
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
                      'Spcl Chai'
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  child: Text(
                      'Rs 10'
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
                      'Upma'
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  child: Text(
                      'Rs 25'
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
                      'Cholle Bhature'
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
                      'Poha'
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  child: Text(
                      'Rs 25'
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
          ],
        )
    );
  }
}


// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
// import 'package:uno_kart/pages/dropDownPages/chainaastacombo.dart';
// import 'package:uno_kart/pages/dropDownPages/lassiSpecial.dart';
// import 'package:uno_kart/pages/dropDownPages/naasta.dart';
// import 'package:uno_kart/pages/dropDownPages/parathacombo.dart';
// import 'package:uno_kart/pages/dropDownPages/selectmenu.dart';
// import 'package:uno_kart/pages/dropDownPages/specialSweets.dart';
// import 'package:uno_kart/pages/dropDownPages/test.dart';
// import 'package:uno_kart/pages/dropDownPages/test2.dart';
// import 'package:uno_kart/pages/dropDownPages/test3.dart';
// import 'package:uno_kart/pages/dropDownPages/test4.dart';
//
// class MenuList extends StatefulWidget {
//   @override
//   _MenuListState createState() => _MenuListState();
// }
//
// class _MenuListState extends State<MenuList> {
//   final _pageController = PageController();
//   String currentItem = 'Select Menu';
//   final List<String> items = [
//     'Select Menu',
//     "Paratha Combo",
//     "TEST",
//     "Chai Naasta Combo",
//     "TEST4",
//     "Lassi Special",
//     "TEST3",
//     "Naasta",
//     "Special Sweets",
//     "TEST2"
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(
//           children: [
//             Padding(
//               padding: EdgeInsets.only(
//                   top: MediaQuery.of(context).size.height * 0.025,
//                   left: MediaQuery.of(context).size.width * 0.025,
//                   right: MediaQuery.of(context).size.width * 0.025),
//               child: Container(
//                   padding: EdgeInsets.only(left: 10),
//                   height: MediaQuery.of(context).size.height * 0.055,
//                   width: MediaQuery.of(context).size.width,
//                   decoration: BoxDecoration(
//                       border: Border.all(
//                         color: Colors.black,
//                       ),
//                       borderRadius: BorderRadius.circular(5)),
//                   child: DropdownButton<String>(
//                     icon: Icon(null),
//                     underline: Container(
//                       color: Colors.transparent,
//                     ),
//                     value: currentItem,
//                     items: items.map((String dropDownStringItem) {
//                       return DropdownMenuItem<String>(
//                           value: dropDownStringItem,
//                           child: Text(dropDownStringItem));
//                     }).toList(),
//                     onChanged: (String newValueSelected) {
//                       setState(() {
//                         this.currentItem = newValueSelected;
//                         switch(currentItem){
//                           case 'Select Menu':
//                             _pageController.jumpToPage(0);
//                             break;
//                           case 'Paratha Combo':
//                             _pageController.jumpToPage(1);
//                             break;
//                           case 'TEST':
//                             _pageController.jumpToPage(2);
//                             break;
//                           case 'Chai Naasta Combo':
//                             _pageController.jumpToPage(3);
//                             break;
//                           case 'TEST4':
//                             _pageController.jumpToPage(4);
//                             break;
//                           case 'Lassi Special':
//                             _pageController.jumpToPage(5);
//                             break;
//                           case 'TEST3':
//                             _pageController.jumpToPage(6);
//                             break;
//                           case 'Naasta':
//                             _pageController.jumpToPage(7);
//                             break;
//                           case 'Special Sweets':
//                             _pageController.jumpToPage(8);
//                             break;
//                           case 'TEST2':
//                             _pageController.jumpToPage(8);
//                             break;
//                         }
//                       });
//                     },
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   )),
//             ),
//             Expanded(
//               child: PageView(
//                   controller: _pageController,
//                   children: <Widget>[
//                     SelectMenu(),
//                     ParathaCombo(),
//                     Test1(),
//                     ChaiNaasta(),
//                     Test4(),
//                     LassiSpecial(),
//                     Test3(),
//                     Naasta(),
//                     SpecialSweets(),
//                     Test2(),
//                   ]
//               ),
//             )
//           ],
//         ));
//   }
// }

