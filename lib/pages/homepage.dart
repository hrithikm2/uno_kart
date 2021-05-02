import 'package:flutter/material.dart';
import 'package:uno_kart/pages/drawerPages/aboutres.dart';
import 'package:uno_kart/pages/drawerPages/cancelorder.dart';
import 'package:uno_kart/pages/components/customappbar.dart';
import 'package:uno_kart/pages/drawerPages/contactus.dart';
import 'package:uno_kart/pages/drawerPages/deliverydet.dart';
import 'package:uno_kart/pages/drawerPages/menu.dart';
import 'package:uno_kart/pages/drawerPages/neworder.dart';
import 'package:uno_kart/pages/drawerPages/searchorder.dart';
import 'package:uno_kart/pages/drawerPages/totalcol.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pageController = PageController();
  String appBarTitle = 'New Order';
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar:
        Myappbar(title: Text(appBarTitle)),
        drawer: Drawer(
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
                child: DrawerHeader(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Image.asset(
                          "res/admin.png",
                        ),
                      ),
                      Text(
                        'Drawer Header',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffcf91ff),
                  ),
                ),
              ),
              ListTile(
                leading: Image.asset(
                  "res/new_order.png",
                  scale: 2,
                ),
                title: Text('New Order'),
                onTap: () {
                  Navigator.pop(context);
                  _pageController.jumpToPage(0);
                  setState(() {
                    appBarTitle = 'New Order';
                  });
                },
              ),
              ListTile(
                leading: Image.asset(
                  "res/delivered_order.png",
                  scale: 1.5,
                ),
                title: Text('Delivered Order'),
                onTap: () {
                  Navigator.pop(context);
                  _pageController.jumpToPage(1);
                  setState(() {
                    appBarTitle = 'Delivered Order';
                  });
                },
              ),
              ListTile(
                leading: Image.asset(
                  "res/cancel_order.png",
                  scale: 2,
                ),
                title: Text('Cancel Order'),
                onTap: () {
                  Navigator.pop(context);
                  _pageController.jumpToPage(2);
                  setState(() {
                    appBarTitle = 'Cancel Order';
                  });
                },
              ),
              ListTile(
                leading: Image.asset(
                  "res/search_order.png",
                  scale: 1.5,
                ),
                title: Text('Search Order'),
                onTap: () {
                  Navigator.pop(context);
                  _pageController.jumpToPage(3);
                  setState(() {
                    appBarTitle = 'Search Order';
                  });
                },
              ),
              ListTile(
                leading: Image.asset(
                  "res/total_collection.png",
                  scale: 1.4,
                ),
                title: Text('Total Collection'),
                onTap: () {
                  Navigator.pop(context);
                  _pageController.jumpToPage(4);
                  setState(() {
                    appBarTitle = 'Total Collection';
                  });
                },
              ),
              ListTile(
                leading: Image.asset(
                  "res/help_support.png",
                  scale: 2,
                ),
                title: Text('Contact Us'),
                onTap: () {
                  Navigator.pop(context);
                  _pageController.jumpToPage(5);
                  setState(() {
                    appBarTitle = 'Contact Us';
                  });
                },
              ),
              ListTile(
                leading: Image.asset(
                  "res/submenu_ic.png",
                  scale: 1.5,
                ),
                title: Text('Menu'),
                onTap: () {
                  Navigator.pop(context);
                  _pageController.jumpToPage(6);
                  setState(() {
                    appBarTitle = 'Menu List';
                  });
                },
              ),
              ListTile(
                leading: Image.asset(
                  "res/home.png",
                  scale: 2,
                ),
                title: Text('About Restaurant'),
                onTap: () {
                  Navigator.pop(context);
                  _pageController.jumpToPage(7);
                  setState(() {
                    appBarTitle = 'About Restaurant';
                  });
                },
              ),
            ],
          ),
        ),
        body: PageView(
            controller: _pageController,
            children: <Widget>[
              NewOrder(),
              DeliveryDetail(),
              CancelOrder(),
              SearchOrder(),
              TotalCollection(),
              ContactUs(),
              MenuList(),
              AboutRestro(),
            ],
            physics: NeverScrollableScrollPhysics()));
  }
}
