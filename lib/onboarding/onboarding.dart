import 'dart:ui';

import 'package:asiato/login_signup_screen/signin.dart';
import 'package:asiato/widget/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class onboarding_screen extends StatelessWidget {
  const onboarding_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
          Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.cover,
          )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Image.asset(
               'images/logo.png',
               height: 130,
               width: 130,
             ),
             Text('Welcome',style: TextStyle( fontWeight: FontWeight.w400,fontSize: 50,color: Colors.white)),
             Text('Asia to.me',style: TextStyle( fontWeight: FontWeight.w400,fontSize: 50,color: Colors.white)),
             Text('It’s a pleasure to meet you. We are excited that',style: TextStyle( fontWeight: FontWeight.w400,fontSize: 16,color: Colors.white)),
             Text('you’re here so let’s get started!',style: TextStyle( fontWeight: FontWeight.w400,fontSize: 16,color: Colors.white)),
             SizedBox(height: 250,),
             Align(
                alignment: Alignment.bottomCenter,
               child: onboardingbutton(

                 name: 'Get started',
                 color: Colors.white,
                 route: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(
                         builder: (context) =>
                             login_screen()),
                   );
                 },),
             )

            ],
          ),
        ),

    );
  }
}
