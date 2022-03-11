import 'package:asiato/details/helpcenter.dart';
import 'package:asiato/details/my_fiance.dart';
import 'package:asiato/details/order_history.dart';
import 'package:flutter/material.dart';


class drawer extends StatelessWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView(
          children: [
            Container(
              height: 80 ,
              width: 200,
              color: Color(0xffBC1C23),
              child: ListTile(
                //leading: Image(image: AssetImage('images/smile.png'),),
                leading: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/smile.png')),color: Colors.white,borderRadius: BorderRadius.circular(30.0)),
                ),
                title: Text('Hi there!',style: TextStyle(fontSize: 16.0,fontWeight:FontWeight.bold,color: Colors.white),),
                subtitle: Text('View personal information',style: TextStyle(fontSize: 8.0,color: Colors.white,decoration: TextDecoration.underline),),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: 150,
              height: 50,
              decoration: new BoxDecoration(
                color: Color.fromRGBO(242, 242, 242, 1),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color.fromRGBO(242, 242, 242, 1),
                ),
              ),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              history()),
                    );
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                          Icons. favorite,
                          color: Colors.black,size: 18,
                      ),
                      Text(
                        'Order History',
                        style: TextStyle(

                            color: Colors.black
                        ),
                      ),
                    ],
                  )),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: 150,
              height: 50,
              decoration: new BoxDecoration(
                color: Color.fromRGBO(242, 242, 242, 1),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color.fromRGBO(242, 242, 242, 1),
                ),
              ),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              my_fiance()),
                    );
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                            Icons.account_balance_outlined,
                          color: Colors.black
                      ),
                      SizedBox(width: 5,),
                      Text(
                        'My Finance',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Colors.black
                        ),
                      ),
                    ],
                  )),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: 150,
              height: 50,
              decoration: new BoxDecoration(
                color: Color.fromRGBO(242, 242, 242, 1),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color.fromRGBO(242, 242, 242, 1),
                ),
              ),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              help_center()),
                    );
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Icon(
                    Icons.headset_mic_outlined,
                          color: Colors.black
                      ),
                      Text(
                        'Help Center',
                        style: TextStyle(

                            color: Colors.black
                        ),
                      ),
                    ],
                  )),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: 150,
              height: 50,
              decoration: new BoxDecoration(
                color: Color.fromRGBO(242, 242, 242, 1),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color.fromRGBO(242, 242, 242, 1),
                ),
              ),
              child: InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) =>
                    //           Update_Acount_Screen()),
                    // );
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                          Icons. notifications,
                          color: Colors.black
                      ),
                      Text(
                        'Notification',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Colors.black
                        ),
                      ),
                    ],
                  )),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: 150,
              height: 50,
              decoration: new BoxDecoration(
                color: Color.fromRGBO(242, 242, 242, 1),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color.fromRGBO(242, 242, 242, 1),
                ),
              ),
              child: InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) =>
                    //           Update_Acount_Screen()),
                    // );
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Icon(
                    Icons.exit_to_app_rounded,
                          color: Colors.black
                      ),
                      SizedBox(width: 20.0,),
                      Text(
                        'Signout',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Colors.black
                        ),
                      ),
                    ],
                  )),
            ),




          ]),
    );
  }
}
