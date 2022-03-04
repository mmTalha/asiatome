import 'package:asiato/details/order_details.dart';
import 'package:flutter/material.dart';

class new_order extends StatelessWidget {
  const new_order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(

          padding: EdgeInsets.only(left: 10,right: 10,top: 10),
          child: Column(
            children: [
              for (var i = 0; i < 10; i++)   GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => order_details()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween
                        ,
                        children: [
                          Text('Cameron Williamson',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                          SizedBox(height:30,),
                          Text('New Order',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.red),)
                        ],
                      ),
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text('Order AE5587 l 20 Jun, 11:35 am',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color.fromRGBO(130, 130, 130, 1)),),
                     SizedBox(height:20,),
                     Text('Rs:21.00 l Creadit Card',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color.fromRGBO(130, 130, 130, 1)),)
                   ],
                 ),
                      Text('Vag Sandwich x1 (Extra Cheese)',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.black),),
                      SizedBox(height:2,),
                      Text('Fried Chicken x1',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.black),),
                      SizedBox(height:2,),

                      Text('Watermelon Juice x1',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.black),),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
