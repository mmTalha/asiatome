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
            SafeArea(
              child: Container(
                height: 150,
                color: Colors.red,
                child: Center(
                    child: Text(
                      'Hi there!',
                      style:  TextStyle(
                          fontFamily: 'Roboto', color: Colors.white, fontSize: 20),
                    )),
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
                          color: Colors.black
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
                          Icons. wallet_giftcard,
                          color: Colors.black
                      ),
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
                          Icons.help,
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
                          Icons.logout,
                          color: Colors.black
                      ),
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
