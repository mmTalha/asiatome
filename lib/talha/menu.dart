import 'package:asiato/widget/tiles.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
final List<String> imgList = [

  'images/sc5.png',
  'images/sc5.png',
  'images/sc5.png',
  'images/sc5.png',
  'images/sc5.png',
];
class menu extends StatefulWidget {

  const menu({Key? key}) : super(key: key);

  @override
  _menuState createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    RangeValues _currentRangeValues = RangeValues(0.0, 60.0);

    int _current = 0;
    final CarouselController _controller = CarouselController();

    final List<Widget> imageSliders = imgList.map((item) => Container(
        child: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Image(image: AssetImage(item),width: 2000,height: 185,fit: BoxFit.cover),
          ),
        )))
        .toList();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topCenter,
              height: 206.0,
              width: MediaQuery.of(context).size.width,
              child: Builder(
                builder: (context) {
                  final double height = MediaQuery.of(context).size.height;
                  return CarouselSlider(
                    options: CarouselOptions(

                      height: height,
                      viewportFraction: 1.0,
                      enlargeCenterPage: false,
                      //autoPlay: true,
                    ),
                    items: imgList
                        .map((item) => Center(
                      child: Container(
                        alignment: Alignment.topCenter,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(item),fit: BoxFit.cover,)),
                        height: 207,
                      ),
                    ))
                        .toList(),
                  );
                },
              ),
            ),
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Edit menu',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                children: [
                  card().card1(context),
                  card().card1(context),
                  card().card1(context),
                  card().card1(context),
                  card().card1(context),
                  card().card1(context),
                  card().card1(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
