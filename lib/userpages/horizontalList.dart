import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cats/body.png',
            image_caption: 'Body',
          ),
          Category(
            image_location: 'images/cats/hair.png',
            image_caption: 'Hair',
          ),
          Category(
            image_location: 'images/cats/makeup.png',
            image_caption: 'Makeup',
          ),
          Category(
            image_location: 'images/cats/skin.png',
            image_caption: 'Skin',
          ),
          Category(
            image_location: 'images/cats/skin.png',
            image_caption: 'Shoe',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  const Category({Key key, this.image_location, this.image_caption})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        //action on ontap
        onTap: () {},
        child: Container(
          width: 85,
          child: ListTile(
              title: Image.asset(image_location),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(image_caption),
              )),
        ),
      ),
    );
  }
}
