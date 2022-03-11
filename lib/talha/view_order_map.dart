import 'package:flutter/material.dart';

class view_order_map extends StatefulWidget {

  const view_order_map({Key? key}) : super(key: key);

  @override
  _view_order_mapState createState() => _view_order_mapState();
}

class _view_order_mapState extends State<view_order_map> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        leadingWidth: 60.0,
        backgroundColor: Colors.white30,
        elevation: 0.0,
        leading:null,
        centerTitle: false,

        title: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text("View order map",style: TextStyle(color: Colors.black,
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
      body: Container(
        height: MediaQuery.of(context).size.height*0.87,
        width: MediaQuery.of(context).size.width,

        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/map.png')),
            borderRadius: BorderRadius.circular(25.0)
          ),
        ),
      ),
    );
  }
}
