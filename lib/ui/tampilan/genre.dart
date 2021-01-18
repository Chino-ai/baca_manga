import 'package:baca_manga_initial/model/post_model.dart';
import 'package:baca_manga_initial/ui/pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

void main(){
  runApp(Genre());
}

class Genre extends StatefulWidget {
  @override
  _GenreState createState() => _GenreState();
}

class _GenreState extends State<Genre> {

  @override
  Widget build(BuildContext context) {
    List<PostModel> listpost = Provider.of<List<PostModel>>(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.white,Color.fromRGBO(247, 209, 209, 1)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
            )
        ),
        padding: EdgeInsets.all(20),

        child: Column(
          children: [
            Align(
                alignment: Alignment.topCenter,
                child: Text("Genre" ,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 18),)
            ),
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
            ),
            SizedBox(height: 20,),


            // Post
            Expanded(
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                itemCount:listpost.length,
                itemBuilder: (context,index) {

                  return GestureDetector(
                    onTap: (){
                      Get.to(PdfViewer(listpost[index].image));
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
                                image: DecorationImage(image: AssetImage(
                                    "assets/background.jpg"),
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
