// @dart=2.9
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import './dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // void initState() {
  //   super.initState();
  //   Timer(
  //       Duration(seconds: 3),
  //       () => Navigator.pushReplacement(
  //           context, MaterialPageRoute(builder: (context) => SecondScreen())));
  // }

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds: SecondScreen(),
      title: const Text(
        'My Splash',
        textScaleFactor: 2,
      ),
      image: Image.asset(
        'assets/images/zijemu_logo.jpg',
        height: 200,
        scale: 2.5,
        width: 200,
      ),
      loadingText: const Text('loading'),
      photoSize: 100.0,
      loaderColor: Colors.green,
    );
    //Container(
    //     color: Colors.white,
    //     child: Image.asset(
    //       'assets/images/zijemu_logo.jpg',
    //       height: 200,
    //       scale: 2.5,
    //       width: 200,
    //     ));
  }
}

// //class SecondScreen extends StatelessWidget {
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static const List<Widget> _widgetOptions = <Widget>[
//     Text(
//       'HOME PAGE',
//       style: optionStyle,
//     ),
//     Text(
//       'SEARCH',
//       style: optionStyle,
//     ),
//     Text(
//       'HOME PAGE',
//       style: optionStyle,
//     ),
//     Text(
//       'CART',
//       style: optionStyle,
//     ),
//     Text(
//       'SETTINGS',
//       style: optionStyle,
//     ),
//   ];

//   void _onItemTapped(int index) {
//      setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Splash Screen'),
//       ),
//       body: const Center(
//           child: _widgetOptions.elementAt(_selectedIndex),
//           ),
//           bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             title: Text('Home'),
//           ),
//         ]
//     ),);
//   }
// }
