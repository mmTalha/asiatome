import 'package:asiato/Dashboard/drawer.dart';
import 'package:asiato/Dashboard/order_processing.dart';
import 'package:asiato/Dashboard/ready_for_delivery.dart';
import 'package:asiato/Dashboard/upcoming_request.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

import 'new_order.dart';

class Dashboard_screen extends StatefulWidget {
  const Dashboard_screen({Key? key}) : super(key: key);

  @override
  _Dashboard_screenState createState() => _Dashboard_screenState();
}

class _Dashboard_screenState extends State<Dashboard_screen> {
  bool isSwitched = false;
  var textValue = 'You are offline';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'You are online';
      });
      print('You are online');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'You are offline';
      });
      print('You are offline');
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,

      child: Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.red),
          title: Text(
            'Today s Order List  ',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          bottom: TabBar(

              unselectedLabelColor: Color.fromRGBO(151, 151, 151, 1),
              indicatorSize: TabBarIndicatorSize.  tab ,
              indicator: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.redAccent, Colors.redAccent]),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.redAccent),
              tabs: [
                Tab(
                  child: Text("New Order",style: TextStyle(fontSize: 10)),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("upcoming Request",style: TextStyle(fontSize: 10)),

                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Order Processing ",style: TextStyle(fontSize: 10)),

                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Ready for Delivery",style: TextStyle(fontSize: 10)),

                  ),
                ),
              ]),
          actions: [
            Switch(
              onChanged: toggleSwitch,
              value: isSwitched,
              activeColor: Colors.green,
              activeTrackColor: Colors.green,
              inactiveThumbColor: Colors.white70,
              inactiveTrackColor: Colors.green,
            ),
          ],
          elevation: 0.0,
        ),
        drawer: Drawer(
          child: drawer(),
        ),
        body: TabBarView(


            children: [
              new_order(),
              new_order(),
              new_order(),
              new_order(),
        ]),
      ),

    );
  }
}
