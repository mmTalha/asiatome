
import 'package:asiato/Dashboard/Dashboard.dart';
import 'package:asiato/talha/menu.dart';
import 'package:asiato/talha/newOrder.dart';
import 'package:asiato/talha/orderprocessing.dart';
import 'package:asiato/talha/ready_for_delivery.dart';
import 'package:asiato/talha/upcomingrequest.dart';
import 'package:asiato/talha/view_order_map.dart';
import 'package:flutter/material.dart';

class delivery_track extends StatefulWidget {

  const delivery_track({Key? key}) : super(key: key);

  @override
  _delivery_trackState createState() => _delivery_trackState();
}

class _delivery_trackState extends State<delivery_track> {
  bool isSwitched = false;
  var textValue = 'Offline';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Online';
      });
      print('Online');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Offline';
      });
      print('Offline');
    }
  }
  Color _color= Color(0xffC61820);
  //Color _color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 150.0,
        backgroundColor: Colors.white30,
        elevation: 0.0,
        leading:
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: [
              Transform.scale(
                  scale: 1.2,
                  child: Switch(
                    onChanged: toggleSwitch,
                    value: isSwitched,
                    activeColor: Color(0xff98BF64),
                    activeTrackColor: Color(0xff028A0F),
                    inactiveThumbColor: Color(0xff828282),
                    inactiveTrackColor: Color(0xffC1C1C1),
                  )),
              Text(
                '$textValue',
                style: TextStyle(fontSize: 16,color: Colors.black),
              )

            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: InkWell(
              onTap: (){},
              child: Icon(
                Icons.menu_outlined,color: Colors.black,size: 30.0,
              ),
            ),
          ),
        ],
      ),

      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 20,
        mainAxisSpacing: 30,
        crossAxisCount: 2,
        children: <Widget>[
          InkWell(
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffE0E0E0),
                borderRadius: BorderRadius.circular(15.0)
              ),
              alignment: Alignment.center,
              child:  Text("New Order \nRequest (22)",textAlign: TextAlign.center,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w400),),
            ),
               onTap: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                       builder: (BuildContext context) =>
                           newOrder()),
                 );
               }
              //   setState(() {
              //     _color = Colors.red;
              //   });
              // }
          ),
          InkWell(
              onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (BuildContext context) =>
                      upcomingrequest()),
                      );
                      },
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffE0E0E0),
                  borderRadius: BorderRadius.circular(15.0)
              ),
              alignment: Alignment.center,
              child:  Text('Upcoming \nRequest (10)',textAlign: TextAlign.center,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w400),),

            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) =>
                        orderprocessing()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffE0E0E0),
                  borderRadius: BorderRadius.circular(15.0)
              ),
              alignment: Alignment.center,
              child:  Text('Order \nProcessing (2)',textAlign: TextAlign.center,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w400),),

            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) =>
                        ready_for_delivery()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffE0E0E0),
                  borderRadius: BorderRadius.circular(15.0)
              ),
              alignment: Alignment.center,
              child:  Text('Ready for \nDelivery (5)',textAlign: TextAlign.center,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w400),),

            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) =>
                        view_order_map()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffE0E0E0),
                  borderRadius: BorderRadius.circular(15.0)
              ),
              alignment: Alignment.center,
              child:  Text('View order \non map (3)',textAlign: TextAlign.center,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w400),),

            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) =>
                        orderprocessing()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffE0E0E0),
                  borderRadius: BorderRadius.circular(15.0)
              ),
              alignment: Alignment.center,
              child:  Text('On the \nway (6)',textAlign: TextAlign.center,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w400),),

            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) =>
                        Dashboard_screen()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffE0E0E0),
                  borderRadius: BorderRadius.circular(15.0)
              ),
              alignment: Alignment.center,
              child:  Text('Delivered (5)',textAlign: TextAlign.center,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w400),),

            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) =>
                        menu()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffE0E0E0),
                  borderRadius: BorderRadius.circular(15.0)
              ),
              alignment: Alignment.center,
              child:  Text('Cancelled (1)',textAlign: TextAlign.center,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w400),),

            ),
          ),
        ],
      ),

    );
  }
}
