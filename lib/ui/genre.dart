import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: Genre()));
}

class Genre extends StatefulWidget {
  @override
  _GenreState createState() => _GenreState();
}

class _GenreState extends State<Genre> {
  @override
  Widget build(BuildContext context) {
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

        child: ListView(
          children: [
            Column(
              children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Text("Genre" ,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 18),)
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    width: 288,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: "Cari",hintStyle: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 12),
                        fillColor: Colors.grey,
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
                Container(
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
                            image: DecorationImage(image: AssetImage("assets/background.jpg"),fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10)
                        ),

                      ),
                      SizedBox(width: 10,),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Judul",style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 12),),
                            Row(
                              children: [
                                Icon(Icons.remove_red_eye_rounded),
                                SizedBox(width: 10,),
                                Text("0",style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 12),),
                                SizedBox(width: 10,),
                                Icon(Icons.thumb_up),
                                SizedBox(width: 10,),
                                Text("0",style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 12),),
                                SizedBox(width: 5,),

                              ],
                            )

                          ]

                      )
                    ],
                  ),
                )


              ],
            ),
          ],
        ),
      ),
    );
  }
}