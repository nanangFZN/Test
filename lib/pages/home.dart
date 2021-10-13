import 'package:flutter/material.dart';
import 'package:solusidigitalindo/widgets/body_home.dart';
import 'package:solusidigitalindo/widgets/header_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
          HeaderHome(),
          BodyHome()
        ],
      )
    );
  }
}