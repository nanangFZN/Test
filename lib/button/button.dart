import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Buttons extends StatelessWidget {
 final Icon icons;
 final String theme;
 final String text;
 final String navigator;
 Buttons({this.icons,this.text,this.theme,this.navigator});
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.only(left:15,right:15),
          child: InkWell(
            onTap: (){
              Navigator.pushNamed(context, '$navigator');
            },
                      child: Container(
                        width:width*0.2,
                        height:height*0.1,
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(25),
                          color: Color(int.parse(theme.replaceAll('#', '0xff'))),
                        ),
                        child: icons
                      ),
          ),
        ),
                  SizedBox(height:height*0.01),
                  Text(text,
                  style: GoogleFonts.rubik(
                    fontSize:12,
                    fontWeight:FontWeight.bold
                  ),
                  )
      ],
    );
  }
}