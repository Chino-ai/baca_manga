import 'dart:ui';
import 'package:baca_manga_initial/model/post_model.dart';
import 'package:baca_manga_initial/ui/pdf_viewer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:carousel_pro/carousel_pro.dart';




class Beranda extends StatefulWidget {

  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {


  @override
  Widget build(BuildContext context) {
    List<PostModel> listpost = Provider.of<List<PostModel>>(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white,Color.fromRGBO(184, 197, 243, 1)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        padding: EdgeInsets.all(20),
        child: Column(
        children: [
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(10),
            child: Container(
              width: 350,
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Cari",hintStyle: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 12),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),

            //slider
          ),
          SizedBox(
              height: 150.0,
              width: double.infinity,
              child: Expanded(
              child: Carousel(
                dotSize: 4.0,
                dotSpacing: 15.0,
                dotColor: Colors.lightGreenAccent,
                indicatorBgPadding: 5.0,
                dotBgColor: Colors.transparent,
                dotVerticalPadding: 5.0,
                dotPosition: DotPosition.bottomRight,
                images: [
                  InkWell(
                    onTap: (){
                      print('1 Item Click');
                    },
                  child: Image.asset(
                    'assets/one.jpg',
                    fit: BoxFit.cover,
                  ),),
                  InkWell(
                    onTap: (){
                      print('2 Item Click');
                    },
                    child: Image.asset(
                      'assets/two.jpg',
                      fit: BoxFit.cover,
                    ),),
                  InkWell(
                    onTap: (){
                      print('3 Item Click');
                    },
                    child: Image.asset(
                      'assets/tree.jpg',
                      fit: BoxFit.cover,
                    ),),
                  InkWell(
                    onTap: (){
                      print('4 Item Click');
                    },
                    child: Image.asset(
                      'assets/four.jpg',
                      fit: BoxFit.cover,
                    ),),
                ],
              )
          )),
          // Post
              Expanded(
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  itemCount:listpost.length,
                  itemBuilder: (context,index) {

                    return GestureDetector(
                      onTap: (){
                        Get.to(PdfViewer(listpost[index].image ));
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        width: 360,
                        height: 119,

                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)

                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 109,
                              height: 120,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: NetworkImage(
                                      listpost[index].thubmnail),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10)
                              ),

                            ),
                            SizedBox(width: 10,),
                            Column(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceAround,
                                children: [
                                  Text(listpost[index].judul, style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),),
                                  Row(
                                    children: [
                                      Icon(Icons.remove_red_eye_rounded),
                                      SizedBox(width: 10,),
                                      Text("0", style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),),
                                      SizedBox(width: 10,),
                                      Icon(Icons.thumb_up),
                                      SizedBox(width: 10,),
                                      Text("0", style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),),
                                      SizedBox(width: 5,),

                                    ],
                                  ),
                                  SizedBox(height: 15,)

                                ]

                            )
                          ],
                        ),
                      ),

                    );
                  },
                ),
              ),












        ],
          ),
      ),
    );
  }
}
