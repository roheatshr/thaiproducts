import 'package:flutter/material.dart';
import 'package:thaiproducts_app/userpages/imageSlider.dart';

class NavigationBtm extends StatefulWidget {
  @override
  _NavigationBtmState createState() => _NavigationBtmState();
}

class _NavigationBtmState extends State<NavigationBtm> {
  int _selectedPage = 0;
  final _pageOptions = [
    SlideImage(),
    Text('Categories'),
    Text('Contasct Us'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: (int index) {
          setState(() {
            _selectedPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text('categories')),
          BottomNavigationBarItem(
              icon: Icon(Icons.desktop_mac), title: Text('Contact us')),
        ],
      ),
    );
  }
}
