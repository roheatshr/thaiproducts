import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:thaiproducts_app/userpages/products.dart';
import 'horizontalList.dart';
// import 'package:thaiproducts_app/userpages/gridViewProducts.dart';

class SlideImage extends StatefulWidget {
  @override
  _SlideImageState createState() => _SlideImageState();
}

class _SlideImageState extends State<SlideImage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 200.0,
      transform: Matrix4.translationValues(0.0, -30.0, 0.0),
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/logo.png'),
          AssetImage('images/model1.png'),
          AssetImage('images/hairserum.png'),
          AssetImage('images/rice.png'),
          AssetImage('images/4k.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 3.0,
        indicatorBgPadding: 3.0,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            image_carousel,
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Categories',
                style: TextStyle(
                    fontSize: 15.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.pink),
              ),
            ),
            //call horizontal lists from horizontallist.dart
            HorizontalList(),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('Products',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontStyle: FontStyle.italic,
                      color: Colors.blue)),
            ),
            Container(height: 320, child: Products())

            //call grid view products
          ],
        ),
      ),
    );
  }
}
