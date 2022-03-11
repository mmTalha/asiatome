import 'package:asiato/details/order_details.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class new_order extends StatelessWidget {
  const new_order({Key? key}) : super(key: key);
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {}
  //   /// The argument value will return the changed date as [DateTime] when the
  //   /// widget [SfDateRangeSelectionMode] set as single.
  //   ///
  //   /// The argument value will return the changed dates as [List<DateTime>]
  //   /// when the widget [SfDateRangeSelectionMode] set as multiple.
  //   ///
  //   /// The argument value will return the changed range as [PickerDateRange]
  //   /// when the widget [SfDateRangeSelectionMode] set as range.
  //   ///
  //   /// The argument value will return the changed ranges as
  //   /// [List<PickerDateRange] when the widget [SfDateRangeSelectionMode] set as
  //   /// multi range.
  //   setState(() {
  //     // if (args.value is PickerDateRange) {
  //     //   _range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
  //     //       // ignore: lines_longer_than_80_chars
  //     //       ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
  //     // } else if (args.value is DateTime) {
  //     //   _selectedDate = args.value.toString();
  //     // } else if (args.value is List<DateTime>) {
  //     //   _dateCount = args.value.length.toString();
  //     // } else {
  //     //   _rangeCount = args.value.length.toString();
  //     // }
  //   });
  // }

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
              )
            ],
          ),
        ),
      ),
    );
  }
}
