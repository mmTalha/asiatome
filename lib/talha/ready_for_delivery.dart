import 'package:asiato/widget/tiles.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

class ready_for_delivery extends StatefulWidget {

  const ready_for_delivery({Key? key}) : super(key: key);

  @override
  _ready_for_deliveryState createState() => _ready_for_deliveryState();
}

class _ready_for_deliveryState extends State<ready_for_delivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        titleSpacing: 0.0,
        //leadingWidth: 60.0,
        backgroundColor: Colors.white30,
        elevation: 0.0,

        leading:null,
        centerTitle: true,

        title: Padding(
          padding: const EdgeInsets.only(right: 0.0),
          child: Text("Ready for Delivery /Pickup",style: TextStyle(color: Colors.black,
            //decoration: TextDecoration.underline,
          ),),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.menu_outlined,color: Colors.black,size: 30.0,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ButtonsTabBar( height: 50.0,
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
                backgroundColor: Color(0xffC61820),
                borderColor: Color(0xffC61820),
                unselectedBackgroundColor: Colors.white,
                labelStyle:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                unselectedLabelStyle: TextStyle(
                    color: Color(0xffC61820), fontWeight: FontWeight.bold),
                borderWidth: 1.5,
                unselectedBorderColor: Color(0xffC61820),
                //radius: 50,

                tabs: [

                  Tab(
                    //icon: Icon(Icons.directions_car),
                    text: "Route optimization",
                  ),
                  Tab(

                    //icon: Icon(Icons.directions_transit),
                    text: "Assign",
                  ),

                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[

                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0)
                        ),
                          child: Image(image: AssetImage('images/map.png'),)),
                    ),
                    ListView( 
                      padding: EdgeInsets.all(10.0),
                      children: [
                      //for(var i=0;i<=10;i++)
                        SizedBox(height: 20.0,),
                      list().list1(context, 'John Doe', 'Delivery man'),
                        SizedBox(height: 10.0,),
                        list().list1(context, 'Tony', 'Delivery man'),
                        SizedBox(height: 10.0,),
                        list().list1(context, 'Robert Dobie', 'Delivery man'),
                        SizedBox(height: 10.0,),
                        list().list1(context, 'Williamson', 'Delivery man'),
                        SizedBox(height: 10.0,),
                        list().list1(context, 'CameronCameron', 'Delivery man'),
                        SizedBox(height: 10.0,),
                        list().list1(context, 'John Root', 'Delivery man'),
                        SizedBox(height: 10.0,),
                        list().list1(context, 'Williamson', 'Delivery man'),
                        SizedBox(height: 10.0,),
                        list().list1(context, 'Cameron', 'Delivery man'),
                        SizedBox(height: 10.0,),
                        list().list1(context, 'John Root', 'Delivery man'),

                    ],),
                    // Center(
                    //   child: Icon(Icons.directions_transit),
                    // ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
