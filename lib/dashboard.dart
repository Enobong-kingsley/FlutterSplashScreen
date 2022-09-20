import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'HOME PAGE',
      style: optionStyle,
    ),
    Text(
      'SEARCH PAGE',
      style: optionStyle,
    ),
    Text(
      'FAVORITE PAGE',
      style: optionStyle,
    ),
    Text(
      'SETTINGS PAGE',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Shop',
            icon: Icon(Icons.home),
            //title: Text('Home'),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(Icons.search),
            //title: Text('Courses'),
          ),
          BottomNavigationBarItem(
            label: 'Favorite',
            icon: Icon(Icons.favorite_border_sharp),
            // title: Text('Mail'),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(Icons.settings),
            // title: Text('Mail'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.black38,
        onTap: _onItemTapped,
      ),
    );
  }
}
