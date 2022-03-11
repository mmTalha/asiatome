import 'dart:ui';

import 'package:flutter/material.dart';

class history extends StatelessWidget {
  const history({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
        // appBar: AppBar(
        //   title: Text(
        //     'History',
        //     style: TextStyle(color: Colors.black),
        //   ),
        //   centerTitle: true,
        //   elevation: 0.0,
        //   backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        //   leading: GestureDetector(
        //     onTap: () {
        //       Navigator.pop(context);
        //     },
        //     child: Icon(
        //       Icons.arrow_back_ios_rounded,
        //       color: Colors.black,
        //     ),
        //   ),
        // ),
        appBar: AppBar(
          toolbarHeight: 70.0,
          leadingWidth: 0.0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0,left: 40.0),
              child: IconButton(
                icon: Icon(Icons.menu_outlined,color: Colors.black,size: 30.0,),
                //tooltip: 'Show Snackbar',
                onPressed: () {
                },
              ),
            ),
          ],
          title: Container(
              height:30.0,
              child: TextField(
                decoration: new InputDecoration(contentPadding: EdgeInsets.fromLTRB(12, 10, 12, 10) ,

                 hintText: 'Search food nearby',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 0.0,right: 0.0),
                    child: Icon(Icons.search,color: Color(0xFF4F4F4F),),
                  ),
                  hintStyle: TextStyle(color: Color(0xff4F4F4F),fontSize: 14.0,
                       ),
                  filled: true,
                  fillColor: Color(0xFFF3F3F3),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    borderSide: BorderSide(color: Color(0xFFF3F3F3),width: 0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    borderSide: BorderSide(color: Color(0xFFF3F3F3), width: 0),
                  ),
                ),
              )
          ),
        ),
        body: SingleChildScrollView(
          child: Container(

            //padding: EdgeInsets.only(left: 10, right: 10, ),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               // SizedBox(height: 15.0,),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('Order History',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27.0),),
                ),
                SizedBox(height: 10.0,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,

                  decoration: new BoxDecoration(
                      color: Colors.red,
                      //borderRadius: BorderRadius.circular(10)
                    ),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Today',
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18.0),
                        ),
                      )),

                ),
                SizedBox(height: 10.0,),
                for (var i = 0; i < 14; i++)
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15, ),
                    child: Column(
                      children: [
                        Container(
                           margin: EdgeInsets.all(10.0),
                          // padding: EdgeInsets.all(10),
                          height: 130,
                          width: MediaQuery.of(context).size.width,
                          decoration: new BoxDecoration(
                              color: Color(0xffF9F9F9),
                              borderRadius: BorderRadius.circular(20)),
                          child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0,top: 10.0),
                                    child: Container(
                                      height: 50.0,
                                      width:40,
                                      child: Center(child: Image.asset('images/glass.png')),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0,top: 10.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text( 'Order ID: ',style: TextStyle(color: Color.fromRGBO(136, 136, 136, 1)),),
                                            Text( 'ACR145786',style: TextStyle(fontWeight: FontWeight.w700),),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text( 'Payment Method:',style: TextStyle(color: Color.fromRGBO(136, 136, 136, 1)),),
                                            Text( ' Online',style: TextStyle(fontWeight: FontWeight.w700),),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text( 'Total Payment :',style: TextStyle(color: Color.fromRGBO(136, 136, 136, 1)),),
                                            Text( ' \$32.00',style: TextStyle(fontWeight: FontWeight.w700),),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),

                              Container(

                                height: 50,
                                //color: Colors.deepPurple,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    borderRadius:  BorderRadius.only(
                                    bottomLeft:    Radius.circular(20.0),
                                    bottomRight:   Radius.circular(20.0)),
                                  color: Color(0xff1B1B1B),
                                ),

                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Row(
                                    children: [
                                      Text( 'Order Status:',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white),),
                                      Text( ' Delivered',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white),),
                                    ],
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),

                      ],
                    ),
                  ),

              ],
            ),
          ),
        ));
  }
}



