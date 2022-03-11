import 'package:flutter/material.dart';
import 'package:progresso/progresso.dart';

class profile extends StatefulWidget {

  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0,left: 20.0,right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Your order is being prepared',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Color(0xff424242)),),
                          Text('Arriving in 10-20 min',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500,color: Color(0xff7E8389)),)
                        ],
                      ),
                      Container(
                        height: 20.0,
                        width: 50.0,
                        decoration: BoxDecoration(color: Color(0xffF2F2F2),borderRadius: BorderRadius.circular(20.0)),
                        child:Center(child: Text('HELP',style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w500,color: Color(0xff7E8389)),))
                      ),
                    ],
                  ),
                ),
                      SizedBox(height: 20.0,),
                      Progresso(backgroundColor: Color(0xffF2F2F2),
                      backgroundStrokeWidth: 10.0,
                      progressColor: Color(0xffC61820),
                      progressStrokeWidth: 14.0,
                      progress: 0.2,
                      progressStrokeCap: StrokeCap.round,
                      backgroundStrokeCap: StrokeCap.round
                  ),
                SizedBox(height: 20.0,),
                Container(
                  height: 336.0,
                  padding: EdgeInsets.only(left: 1.0,right: 1.0),
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/map3.png'),),borderRadius: BorderRadius.circular(15.0)
                  ),
                ),
                SizedBox(height: 20.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(height: 46,width: 46,decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/profile.png')),borderRadius: BorderRadius.circular(50.0))),
                            SizedBox(width: 10.0,),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Halli',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,color: Color(0xff424242)),),
                                  Text('Your Driver',style: TextStyle(fontSize: 15.0,color: Color(0xff7E8389)),),
                                ],
                              ),
                            ),
                          ],
                        ),

                        Container(
                            height: 20.0,
                            width: 88.0,
                            decoration: BoxDecoration(color: Color(0xffF2F2F2)),
                            child :Center(child: Text('Contact Driver',style: TextStyle(fontSize: 12.0,color: Color(0xff7E8389)),))
                        ),
                      ],
                    ),
                    SizedBox(height: 15.0,),
                    Divider(thickness: 0.5,color: Color(0xff7E8389),),
                    SizedBox(height: 15.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('10:00 PM',style: TextStyle(color: Color(0xff424242),fontSize: 20.0,fontWeight: FontWeight.bold),),
                        Text('Estimated Delivery Time',style: TextStyle(color: Color(0xff7E8389),fontSize: 15.0),)
                      ],
                    ),
                    SizedBox(height: 15.0,),
                    Divider(thickness: 0.5,color: Color(0xff7E8389),),
                    SizedBox(height: 15.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Address',style: TextStyle(color: Color(0xff424242),fontSize: 20.0,fontWeight: FontWeight.bold),),
                        Text("434 Broadway Floor 3 \nNew York, NY 10013",style: TextStyle(color: Color(0xff7E8389),fontSize: 15.0),)
                      ],
                    ),
                    SizedBox(height: 15.0,),
                    Divider(thickness: 0.5,color: Color(0xff7E8389),),
                    SizedBox(height: 15.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Order Details',style: TextStyle(color: Color(0xff424242),fontSize: 20.0,fontWeight: FontWeight.bold),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Katsuei',style: TextStyle(color: Color(0xff424242),fontSize: 15.0,fontWeight: FontWeight.w500),),
                                Text("1x - California Roll",style: TextStyle(color: Color(0xff7E8389),fontSize: 15.0),),
                              ],
                            ),
                            Container(
                              child: Text('View Receipt',style: TextStyle(color: Color(0xffC61820),fontSize: 15.0,fontWeight: FontWeight.bold),),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 40.0,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
