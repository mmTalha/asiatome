import 'dart:math';

import 'package:asiato/widget/tiles.dart';
import 'package:flutter/material.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';

class Order_list extends StatefulWidget {

  const Order_list({Key? key}) : super(key: key);

  @override
  State<Order_list> createState() => _Order_listState();
}

class _Order_listState extends State<Order_list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        //backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios_outlined,color: Colors.black,size: 24,
        ),
        centerTitle: true,
        title: Text(
          'Orders List',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text('Past orders',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500),),
              ),
              //SizedBox(height: 10.0,),

              // SizedBox(height: 20.0,),
              // Container(
              //   decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15.0),
              //       boxShadow: [
              //     BoxShadow(
              //       color: Colors.grey.withOpacity(0.2),
              //       spreadRadius: 5,
              //       blurRadius: 25,
              //       offset: Offset(0, 4), // changes position of shadow
              //     ),
              //   ] ),
              //   height: 96,
              //   width: 318,
              //   padding:  EdgeInsets.all(12),
              //   child:  Text('Apply badge colors and font styles'),
              //   foregroundDecoration:  RotatedCornerDecoration(
              //     //labelInsets: ,
              //     color: Colors.blueGrey,
              //     geometry:  BadgeGeometry(width: 80, height: 60,cornerRadius: 15.0),
              //
              //     textSpan:  TextSpan(
              //       children: [
              //         TextSpan(
              //           text: '4.5',
              //           style: TextStyle(
              //             fontSize: 12,
              //             letterSpacing: 1,
              //             fontWeight: FontWeight.bold,
              //             //shadows: [BoxShadow(color: Colors.yellowAccent, blurRadius: 4,spreadRadius: 25.0)],
              //           ),),
              //
              //       ],
              //
              //     ),
              //   ),
              // ),
              SizedBox(height: 20.0,),
              order().order1('Fish','10 Dec, 5:50 pm', 'Restaurant Napkin SeaFood', '\$234,45'),
              SizedBox(height: 20.0,),
              order().order1('Fish','10 Dec, 5:50 pm', 'Restaurant Napkin SeaFood', '\$234,45'),
              SizedBox(height: 20.0,),
              order().order1('Zinger Burger','10 Dec, 5:50 pm', 'Restaurant Napkin SeaFood', '\$234,45'),
              SizedBox(height: 20.0,),
              order().order1('Saled','10 Dec, 5:50 pm', 'Restaurant Napkin SeaFood', '\$234,45'),
              SizedBox(height: 20.0,),
              order().order1('Sea Foods','10 Dec, 5:50 pm', 'Restaurant Napkin SeaFood', '\$234,45'),
              SizedBox(height: 20.0,),
              order().order1('Sea Foods','10 Dec, 5:50 pm', 'Restaurant Napkin SeaFood', '\$234,45'),
              SizedBox(height: 20.0,),
              order().order1('Sea Foods','10 Dec, 5:50 pm', 'Restaurant Napkin SeaFood', '\$234,45'),
            ],
          ),
        ),
      ),
    );
  }
}
