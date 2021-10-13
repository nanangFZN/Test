import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:solusidigitalindo/button/button.dart';


class BodyHome extends StatelessWidget {
 final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          width: width*0.9,
          height: height*0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient:LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.bottomRight,
              colors:[Color(0xff45caff),Color(0xffff1b6b)]
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(vertical: height*0.025,horizontal: height*0.035),
                child: Text('Info Antrian',
                style:GoogleFonts.rubik(
                  fontSize:20,
                  fontWeight:FontWeight.bold,
                  color:Colors.white
                )
                ),
              ),
              Divider(
                height:10,
                thickness:2,
                color: Colors.white,
              ),
              Row(
                
                children: [
                Padding(
                  padding:  EdgeInsets.only(left:5,),
                  child: Column(
                    children: [
                      CircularPercentIndicator(
                      radius: 100.0,
                      animation: true,
                      animationDuration: 1200,
                      lineWidth: 4.0,
                      percent: 0.9,
                      center: new Text(
                        "20",
                        style:
                            GoogleFonts.rubik(
                              fontSize:18,
                              fontWeight:FontWeight.bold,
                              color: Colors.white
                            )
                      ),
                      circularStrokeCap: CircularStrokeCap.butt,
                      backgroundColor: Colors.transparent,
                      progressColor: Colors.white,
                      ),
                      SizedBox(height:height*0.01),
                      Text('Nomor Antrian',
                      style:GoogleFonts.rubik(
                              fontSize:14,
                              fontWeight:FontWeight.bold,
                              color: Colors.white
                            )
                            )
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(right:5,),
                  child: Column(
                    children: [
                      CircularPercentIndicator(
                      radius: 100.0,
                      animation: true,
                      animationDuration: 1200,
                      lineWidth: 4.0,
                      percent: 0.9,
                      center: new Text(
                        "5",
                        style:
                            GoogleFonts.rubik(
                              fontSize:18,
                              fontWeight:FontWeight.bold,
                              color: Colors.white
                            )
                      ),
                      circularStrokeCap: CircularStrokeCap.butt,
                      backgroundColor: Colors.transparent,
                      progressColor: Colors.white,
                      ),
                      SizedBox(height:height*0.01),
                      Text('Sisa Antrian',
                      style:GoogleFonts.rubik(
                              fontSize:14,
                              fontWeight:FontWeight.bold,
                              color: Colors.white
                            )
                            )
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                 Text('Dokter anda',
                      style:GoogleFonts.rubik(
                              fontSize:12,
                              fontWeight:FontWeight.bold,
                              color: Colors.amber
                            )
                            ) ,  
                 Text('dr.  Rina Agustina',
                      style:GoogleFonts.rubik(
                              fontSize:12,
                              fontWeight:FontWeight.bold,
                              color: Colors.white
                            )
                            ),
                            Text('Klinik / RS anda',
                      style:GoogleFonts.rubik(
                              fontSize:12,
                              fontWeight:FontWeight.bold,
                              color: Colors.amber
                            )
                            ) ,  
                 Text('RS. Nasional Hospital',
                      style:GoogleFonts.rubik(
                              fontSize:10,
                              fontWeight:FontWeight.bold,
                              color: Colors.white
                            )
                            )
                  
                  
                  ]
                )
                ]
              )
            ],
          ),
        ),

       Padding(
            padding:  EdgeInsets.only(top:width*0.0125),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Buttons(
                  icons: Icon(Icons.local_hospital,color:Colors.white),
                  theme: '#1E90FF',
                    navigator: '/detail',
                  text:'Klinik Terdekat'
                ),
                Buttons(
                  icons: Icon(Icons.menu,color:Colors.white),
                  theme: '#1E90FF',
                    navigator: '/detail',
                  text:'Riwayat'
                ),
                 Buttons(
                  icons: Icon(Icons.image,color:Colors.white),
                  theme: '#800080',
                    navigator: '/detail',
                  text:'Data Scan'
                ),
              ],),
          ),
           Padding(
            padding:  EdgeInsets.only(top:width*0.0125),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Buttons(
                  icons: Icon(Icons.local_hospital,color:Colors.white),
                  theme: '#1E90FF',
                  text:'Notifikasi',
                    navigator: '/detail',
                ),
                Buttons(
                  icons: Icon(Icons.menu,color:Colors.white),
                  theme: '#800080',
                  text:'Beri Nilai',
                    navigator: '/detail',
                ),
                 Buttons(
                  icons: Icon(Icons.image,color:Colors.white),
                  theme: '#FFC0CB',
                  text:'Pengaturan',
                  navigator: '/detail',
                ),
              ],),
          ),
        Divider(
          height:50,
          thickness:10
        ),
        CarouselSlider(
        options: CarouselOptions(
        height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
        ),
        items: [
           Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://media.istockphoto.com/photos/exercising-and-healthy-food-raibow-colored-fruits-vegetables-and-picture-id1276373624?s=612x612"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                  
                //2nd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://media.istockphoto.com/photos/exercising-and-healthy-food-raibow-colored-fruits-vegetables-and-picture-id1276373624?s=612x612"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
        ],
      )  
       
      ],
    );
  }
}