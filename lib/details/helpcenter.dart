import 'package:flutter/material.dart';

class help_center extends StatelessWidget {
  const help_center({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20,right: 20,top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text( 'Help Center',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 28),),
              Text( 'Help centre the problem, and its solutions',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 14),),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                height: 150,
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
                    child: Center(
                      child: Text(

                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nisl in mattis tempus in id. Sed amet mattis est pharetra, fringilla. Eros ultrices id morbi lobortis vulputate. Eu quis facilisis id arcu facilisis augue venenatis risus a.',

                        maxLines: 4,
                        style: TextStyle(

                            color: Colors.black
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
