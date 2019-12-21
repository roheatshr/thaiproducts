import 'package:flutter/material.dart';
import 'package:thaiproducts_app/userpages/bottomNav.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Thai Products Nepal',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color.fromRGBO(238, 166, 190, 1),
          accentColor: Color.fromRGBO(167, 208, 230, 1),
        ),
        home: Scaffold(
          appBar: AppBar(
            // backgroundColorStart: Color.fromRGBO(250, 160, 190, 1),
            // backgroundColorEnd: Color.fromRGBO(250, 160, 190, 1),
            title: Text('Cosmetics'),
            textTheme:
                TextTheme(title: TextStyle(color: Colors.white, fontSize: 20)),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                onPressed: () {},
              )
            ],
          ),
          body: NavigationBtm(),

          //sidebar navigation
          // drawer: Drawer(
          //   child: ListView(
          //     children: <Widget>[
          //       UserAccountsDrawerHeader(
          //         accountName: Text('Rohit Shrestha'),
          //         accountEmail: Text('@gmail.com'),
          //         currentAccountPicture: GestureDetector(
          //           child: CircleAvatar(
          //             backgroundColor: Colors.grey,
          //             child: Icon(Icons.person),
          //           ),
          //         ),
          //       )
          //     ],
          //   ),
          // ),
        ));
  }
}
