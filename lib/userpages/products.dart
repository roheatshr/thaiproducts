import 'package:flutter/material.dart';
import 'package:thaiproducts_app/pages/productDetails.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {"name": "O White", "pictures": "images/products/owhite.jpg", "price": 100},
    {
      "name": "Glutathione",
      "pictures": "images/products/glutathione.jpg",
      "price": 3000
    },
    {
      "name": "Legano hair tonic",
      "pictures": "images/products/legano.jpg",
      "price": 200
    },
    {
      "name": "Neutrogena",
      "pictures": "images/products/neutrogena.jpg",
      "price": 300
    },
    {"name": "Colly", "pictures": "images/products/colly.png", "price": 100}
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Single_prod(
          prod_name: product_list[index]['name'],
          prod_pic: product_list[index]['pictures'],
          prod_price: product_list[index]['price'],
        );
      },
    );
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pic;
  final prod_price;

  const Single_prod({Key key, this.prod_name, this.prod_pic, this.prod_price})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 30.0,
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () => print('Hello'),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    prod_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    "\Rs $prod_price",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              child: Image.asset(
                prod_pic,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
