import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Post extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
  
}