import 'package:flutter/widgets.dart';
import 'package:baca_manga_initial/ui/style/custom_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:baca_manga_initial/ui/widget/custom_button.dart';
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
               child: Image(image: AssetImage("assets/backgroundHome.jpg"),fit: BoxFit.none),
           ),
           Container(
             width: double.infinity,
             height: double.infinity,

            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black45,Colors.transparent],
                begin: Alignment.topCenter,



              ),

            ),
           ),


           Center(
              child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
                Text("Baca Manga",
                style: GoogleFonts.poppins(
                    color: Colors.white,fontWeight: FontWeight.bold,fontSize: 50,

                ),

                ),


               SizedBox(height: 140,),


                     GestureDetector(
                       onTap: (){

                         setState(() {
                           print("print1");
                         });
                         },


                       child: ButtonMasuk(
                        CustomStyle.buttonStyle.clone()
                            ..padding(top: 7,)
                            ..border(all: 2)




               ),



                     ),
               SizedBox(height: 10,),
               ButtonDaftar(
                   CustomStyle.buttonStyle.clone()
                     ..padding(top: 7,)
                     ..border(all: 2)


               ),



             ],
           ),
         ),
     ],
       ),
     );
   }
 }
 