import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:solusidigitalindo/pages/detail.dart';
import 'package:solusidigitalindo/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>HomePage(),
        '/detail':(context)=>Detail(),
      },
      
    );
  }
}
