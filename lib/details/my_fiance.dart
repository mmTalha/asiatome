import 'package:flutter/material.dart';


class my_fiance extends StatelessWidget {
  const my_fiance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        appBar: AppBar(

          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only( bottom: 10),
            height: MediaQuery.of(context).size.height*1.35,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text('My Finance',style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 20.0,),
                Container(
                  decoration: new BoxDecoration(
                      color: Color(0xffBC1C23),
                      ),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text(
                          'Today',
                          style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.w500),
                        ),
                      )),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  height: MediaQuery.of(context).size.height*1.2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 0.0,),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 80,
                    width: 150,
                    decoration: new BoxDecoration(
                        color: Color.fromRGBO(244, 244, 244, 1),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Today'),
                        Text(
                          '\$345.00',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Text('02 feb, 2021'),
                      ],
                    ),
                  ),
                      //SizedBox(height: 10.0,),
                  for (var i = 0; i <= 6; i++)

                    Container(
                      padding: EdgeInsets.all(10),
                      height: 90,
                      width: MediaQuery.of(context).size.width,
                      decoration: new BoxDecoration(
                          color: Color.fromRGBO(244, 244, 244, 1),
                          borderRadius: BorderRadius.circular(10),
                      boxShadow:kElevationToShadow[3],
                         ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Order ID: ',
                                style: TextStyle(
                                    color: Color.fromRGBO(136, 136, 136, 1)),
                              ),
                              Text(
                                'ACR145786',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Payment :',
                                style: TextStyle(
                                    color: Color.fromRGBO(136, 136, 136, 1)),
                              ),
                              Text(
                                ' Online',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Date:  ',
                                    style: TextStyle(
                                        color:
                                        Color.fromRGBO(136, 136, 136, 1)),
                                  ),
                                  Text(
                                    '02 feb, 2021',
                                    style:
                                    TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                              Text(
                                '\$345.00',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                            ],
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
