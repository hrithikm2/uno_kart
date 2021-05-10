import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:uno_kart/data/menuNamesWithId.dart';


class MenuList extends StatefulWidget {
  @override
  _MenuListState createState() => _MenuListState();
}

List<String> items = ['Select Menu'];
List<String> menuId = ["0"];
bool sat = false;
addItems(){
  print(sat);
  if(items.length<2)
    {for(var i = 0;i< menuData.menuDataData.length;i++){
      print(sat);
      items.add(menuData.menuDataData[i].menuName);
      items.add(menuData.menuDataData[i].menuId);
    }
    }
  sat = false;
  print(sat);
}

class _MenuListState extends State<MenuList> {
  String currentItem = 'Select Menu';
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: createAlbumMenuDetails("1"),
      builder: (context, snapshot) {
        return (!snapshot.hasData)?Center(
          child: Container(
            height: 20,
            width: 20,
            child: CircularProgressIndicator(),
          ),
        ):Scaffold(
          body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.025,
                  left: MediaQuery.of(context).size.width * 0.025,
                  right: MediaQuery.of(context).size.width * 0.025),
              child: Container(
                  padding: EdgeInsets.only(left: 10),
                  height: MediaQuery.of(context).size.height * 0.055,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  child:
                  DropdownButton<String>(
                    icon: Icon(null),
                    underline: Container(
                      color: Colors.transparent,
                    ),
                    value: currentItem,
                    items: items.map((String dropDownStringItem) {
                      return DropdownMenuItem<String>(
                          value: dropDownStringItem,
                          onTap:(){
                            setState(() {
                              sat = true;
                            });
                            addItems();
                          },
                          child: (sat)?Center(
                            child: Container(
                                height: 15,
                                width: 15,
                                child: CircularProgressIndicator()),
                          ):
                          Text(dropDownStringItem));
                    }).toList(),
                    onChanged: (String newValueSelected) {
                      setState(() {
                        this.currentItem = newValueSelected;
                        }
                      );
                    },
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
            ),
            (!snapshot.hasData)?Center(
              child: Container(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(),
              ),
            ):
            Expanded(
              child: FutureBuilder(
                  future: createAlbumMenuDetails("1"),
                  builder: (context,snapshot){
                return ListView.builder(
                    itemCount: menuData.menuDataData.length,
                    itemBuilder: (context,index){
                  return ListTile(
                    title: Text('MenuName: ${snapshot.data.menuDataData[index].menuName}'),
                    subtitle: Text('MenuId: ${snapshot.data.menuDataData[index].menuId}'),
                  );
                });
              }),
            )
            //container ke andar future builder, call func parameter
                  ]
              ),
        );
      },
    );
  }
}
