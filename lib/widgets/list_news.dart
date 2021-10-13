import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:http/http.dart' as http;

class ListNews extends StatefulWidget {
  const ListNews({Key key}) : super(key: key);

  @override
  _ListNewsState createState() => _ListNewsState();
}

class _ListNewsState extends State<ListNews> {
  
  Future getData() async{
    var response=await http.get(Uri.parse(
       'https://newsapi.org/v2/everything?q=tesla&from=2021-09-13&sortBy=publishedAt&apiKey=bae3e72519b14e1fbc6e6f4172b1cbb2'));
       print(json.decode(response.body)['articles']);
    return json.decode(response.body);
  }
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    getData();
    return FutureBuilder(
      future: getData(),
      builder: (context,snapshot){
        if (snapshot.hasData) {
          return ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
            itemCount: snapshot.data['articles'].length,
            itemBuilder: (context,index){
              return Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:height*0.015),
            Center(
              child: Container(
                width: width*0.95,
                height: height*0.3,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(25),
                  image:DecorationImage(image:NetworkImage('https://i.iplsc.com/-/000DDC75087D6UR9-C411.png'))
                ),
              ),
            ),
SizedBox(height:height*0.01),
            Padding(
              padding:  EdgeInsets.only(left:width*0.05),
              child: Text(snapshot.data['articles'][index]['title'],
              textAlign:TextAlign.left,
              style:GoogleFonts.rubik(
                fontSize:20,
                fontWeight: FontWeight.bold,
                color: Colors.grey
              )
              ),
            ),
            SizedBox(height:height*0.01),
            Padding(
              padding:  EdgeInsets.only(left:width*0.05),
              child: Text('Sumber : '+ snapshot.data['articles'][1]['author'],
              textAlign:TextAlign.left,
              style:GoogleFonts.rubik(
                fontSize:12,
                fontWeight: FontWeight.bold,
                color: Colors.grey
              )
              ),
            ),
           SizedBox(height:height*0.01),
            Padding(
              padding:  EdgeInsets.only(left:width*0.05),
              child: Text(snapshot.data['articles'][index]['publishedAt'],
              textAlign:TextAlign.left,
              style:GoogleFonts.rubik(
                fontSize:12,
                fontWeight: FontWeight.bold,
                color: Colors.grey
              )
              ),
            ),
    SizedBox(height:height*0.01),
            Padding(
              padding:  EdgeInsets.only(left:width*0.05),
              child: Text(snapshot.data['articles'][index]['description'],
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              textAlign:TextAlign.left,
              style:GoogleFonts.rubik(
                fontSize:14,
                fontWeight: FontWeight.bold,
                color: Colors.grey
              )
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left:width*0.05),
              child: TextButton(
                onPressed: (){},
                child: Text('Baca Selengkapnya'),
              ),
            )

          ]);
            });
        }else{
          return Text('loading');
        }
      },
    );
  }
}