import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';

class list{
  Widget list1(BuildContext context,text,text2){
return Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text,style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
            Text(text2,style: TextStyle(fontSize: 9.0,color: Color(0xff8A8A8A)),)
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 22.0,
          width: 61.0,
          decoration: BoxDecoration(color: Color(0xffBC1C23),borderRadius: BorderRadius.circular(5.0)),
          child: Center(child: Text('Assign',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Color(0xffFFFFFF)),)),
        ),
      ),
    ],
  ),
);
  }
}

class card{
  Widget card1(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8.0),
      child: Container(
        height: 102,
        //width: MediaQuery.of(context).size.width * 0.9,
        child: Row(
          children: [
            Container(
              height: 80,
              width: 79,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/11.png'),
                      alignment: Alignment.centerLeft)),
            ),
            Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 17,
                  width: 230,
                  child: ListTile(
                    title: Text(
                      'Pan Cakes',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    subtitle: Text('Pista House, Kukatpally'),
                    // trailing: Icon(
                    //   Icons.favorite_border,
                    //   color: Color(0XFFBC1C23),
                    // ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(top: 12.0),
                //   child: Row(
                //     //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Text(
                //         'Pan Cakes',
                //         style: TextStyle(
                //             fontWeight: FontWeight.bold, fontSize: 18),
                //       ),

                //       Icon(
                //         Icons.favorite_border,
                //         color: Color(0XFFBC1C23),
                //       ),
                //     ],
                //   ),
                // ),
                // SizedBox(
                //   height: 10.0,
                // ),
                // Text(
                //   'Pista House, Kukatpally',
                //   style: TextStyle(
                //       color: Color(0XFF616161), fontSize: 12.0),
                // ),
                // // Divider(
                // //   color: Colors.black,
                // //   height: 2,
                // //   thickness: 10.0,
                // // ),
                SizedBox(
                  height: 35.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    '____________________',
                    style: TextStyle(color: Color(0XFF616161)),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    '\$ 15.20',
                    style:
                    TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class order{
  Widget order1(text1,text2,text3,text4){
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 25,
                  offset: Offset(0, 4), // changes position of shadow
                ),
              ] ),
          height: 105,
          width: 318,

          child:  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                horizontalTitleGap: 6.0,
                leading: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),),

                    child: Image(image: AssetImage('images/order.png'),)),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(text1,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500,letterSpacing: 0.01),),
                      Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: Text(text2,style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w500,color: Color(0xff9F9999),),),
                      ),
                    ],
                  ),
                  subtitle: Text(text3,style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w500,color: Color(0xff9F9999),letterSpacing: 0.1),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0),
                    child: Text(text4,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Container(
                      height: 24,
                      width: 84,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0),border: Border.all(color: Color(0xffC61820),width: 2.0)),
                      child: Center(child: Text('Order Again',style: TextStyle(color: Color(0xffC61820),fontSize: 9.0,fontWeight: FontWeight.w500),)),
                    ),
                  ),
                ],
              ),

            ],
          ),
          foregroundDecoration:  RotatedCornerDecoration(
            //labelInsets: ,
            color: Color(0xffBC1C23),
            geometry:  BadgeGeometry(width: 80, height: 45,cornerRadius: 15.0),

            textSpan:  TextSpan(
              children: [
                TextSpan(
                  text: '4.5',
                  style: TextStyle(
                    fontSize: 12,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    //shadows: [BoxShadow(color: Colors.yellowAccent, blurRadius: 4,spreadRadius: 25.0)],
                  ),),

              ],

            ),
          ),
        ),
        Positioned(
          right: 38,
          child: Container(
            height: 20,
            width: 20,
            child: Icon(
              Icons.star_outlined,color: Color(0xffFEC545),size: 17,
            ),
            color: Colors.transparent,
          ),
        ),
      ],
    );
  }
}