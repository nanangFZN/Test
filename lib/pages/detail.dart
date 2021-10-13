import 'package:flutter/material.dart';
import 'package:solusidigitalindo/widgets/header_home.dart';
import 'package:solusidigitalindo/widgets/list_news.dart';

class Detail extends StatelessWidget {
  const Detail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
       children: [
          Column(
  
              children: [
  
                HeaderHome(),
  
                 ListNews()
  
              ],
  
            ),
],
         
        
      )
    );
  }
}