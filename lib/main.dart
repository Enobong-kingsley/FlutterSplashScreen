// @dart=2.9
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

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

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash Screen'),
      ),
      body: const Center(
          child: Text(
        "Zijemu Landing Page",
        textScaleFactor: 2,
      )),
    );
  }
}
