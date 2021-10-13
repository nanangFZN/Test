import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height*0.2,
      
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
            Padding(
              padding:  EdgeInsets.only(left:width*0.03),
              child: Image.asset('assets/header.png'),
            ),
            Padding(
              padding:  EdgeInsets.only(right:width*0.03),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Hi, Bagus',
                  style: GoogleFonts.rubik(
                    fontSize:16,
                    fontWeight:FontWeight.bold,
                    color: Colors.grey
                  ),
                  ),
                  Container( 
                    width:width*0.15,
                    height:height*0.05,
                    decoration: BoxDecoration(
                      color:Colors.grey,
                      shape:BoxShape.circle,
                    ),
                    child:Icon(Icons.person,color:Colors.white)
                  )
                ],
              ),
            ),
            
            ]
           
          ),
          SizedBox(height:height*0.025),
          Container(
            width:width*0.9,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(25),
              boxShadow:[BoxShadow(
                spreadRadius: 1,
                blurRadius: 1,
                color: Colors.grey
              )]
            ),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white12,
                filled: true,
                hintText: 'Cari Klinik / Rumah Sakit',
                hintStyle: TextStyle(
                  color:Colors.grey,
                  fontWeight:FontWeight.w400
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(
                    color:Colors.transparent
                  )
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(
                    color:Colors.transparent
                  )
                )
              ),
            ),
          )
        ],
      ),
      
    );
  }
}