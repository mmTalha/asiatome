import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class newOrder extends StatefulWidget {

  const newOrder({Key? key}) : super(key: key);



  @override
  _newOrderState createState() => _newOrderState();
}



class _newOrderState extends State<newOrder> {
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {}
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
        backgroundColor: Colors.white,
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
        title: Text("Today\'s Order List",style: TextStyle(color: Color(0xffC61820),decoration: TextDecoration.underline,),),
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
          //height: MediaQuery.of(context).size.height*0.9,
          //width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 250.0,
                  width: MediaQuery.of(context).size.width,
                  child: SfDateRangePicker(
                    // selectionColor: Colors.deepPurple,
                    rangeSelectionColor: Color(0xffC61820),
                    startRangeSelectionColor: Color(0xffC61820),
                    endRangeSelectionColor: Color(0xffC61820),
                    onSelectionChanged: _onSelectionChanged,
                    selectionMode: DateRangePickerSelectionMode.range,
                    //selectionColor: Color(0xffBC1C23),
                    showActionButtons: true,

                    backgroundColor: Colors.white,
                    confirmText: 'Done',
                    cancelText: 'Cancel',
                    initialSelectedRange: PickerDateRange(
                        DateTime.now().subtract(const Duration(days: 4)),
                        DateTime.now().add(const Duration(days: 3))),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for(var i=0;i<=5;i++)
                  Container(
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
                            Text('New Order',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Color(0xffC61820),),)
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
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
