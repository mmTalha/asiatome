import 'package:flutter/material.dart';

class upcomingrequest extends StatefulWidget {

  const upcomingrequest({Key? key}) : super(key: key);

  @override
  _upcomingrequestState createState() => _upcomingrequestState();
}

class _upcomingrequestState extends State<upcomingrequest> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        leadingWidth: 60.0,
        backgroundColor: Colors.white30,
        elevation: 0.0,
        leading:
        Padding(
          padding: const EdgeInsets.only(left: 0.0),
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
              // Text(
              //   '$textValue',
              //   style: TextStyle(fontSize: 16,color: Colors.black),
              // )

            ],
          ),
        ),
        //centerTitle: true,
        title: Text("Today\'s Order List",style: TextStyle(color: Colors.black,
          //decoration: TextDecoration.underline,
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0,left: 85.0),
            child: Icon(
              Icons.menu_outlined,color: Colors.black,size: 30.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          //padding: EdgeInsets.all(20.0),
          //height: MediaQuery.of(context).size.height,
          //color: Colors.red,
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text('Upcoming Request',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),
              ),
              SizedBox(height: 20.0,),
              Container(

                padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                child: Column(
                  children: [
                    for (var i = 0; i < 10; i++)   GestureDetector(
                      onTap: (){},
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
                                Text('New Order',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Color(0xffC61820)),)
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
            ],
          ),


        ),
      ),
    );
  }
}
