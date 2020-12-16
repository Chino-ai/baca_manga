import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
 class HomePage extends StatefulWidget {
   @override
   _HomePageState createState() => _HomePageState();
 }
 
 class _HomePageState extends State<HomePage> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Stack(
         children: [
           Container(
             width: double.infinity,
             height: double.infinity,
             child: Image(image: AssetImage("assets/backgroundHome"),fit: BoxFit.cover,),
           ),


           Center(
              child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
                Text("Baca Manga",
                style: GoogleFonts.poppins(
                    color: Colors.white,fontWeight: FontWeight.bold,fontSize: 50
                ),
                ),
               SizedBox(height: 100,),
               RaisedButton(
                 child: Text("Masuk"),
                   onPressed: (){}
               ),
               SizedBox(height: 5,),
               RaisedButton(
                 child: Text("Daftar"),
                   onPressed: (){}
               ),



             ],
           ),
         ),
     ],
       ),
     );
   }
 }
 