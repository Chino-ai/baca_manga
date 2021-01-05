import 'package:baca_manga_initial/style/custom_style.dart';
import 'package:baca_manga_initial/ui/widget/custom_button.dart';
import 'package:baca_manga_initial/ui/daftar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';


import 'home_page.dart';



class Masuk extends StatefulWidget {
  @override
  _MasukState createState() => _MasukState();
}

class _MasukState extends State<Masuk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.redAccent,
          body: ListView(

            children: [
              Align(
                alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap:  (){
                      Get.offAll(HomePage());
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.only(left: 30,top: 20),
                        child: Icon(Icons.arrow_back,color: Colors.black,)
                    ),
                  )
              ),
              Center(
              child: Container(
                margin: EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Masuk" ,style: GoogleFonts.poppins(fontSize: 48, fontWeight: FontWeight.bold,color: Colors.black),),
                    SizedBox(height: 150,),
                    TextField(
                       decoration: InputDecoration(
                         hintStyle: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.bold,color: Colors.black),
                         hintText: "Email",
                           prefixIcon: Icon(Icons.email,color: Colors.black,),
                         focusedBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.black),
                         )


                       ),

                    ),
                SizedBox(height: 30,),
                TextField(
                  decoration: InputDecoration(
                    hintStyle: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.bold,color: Colors.black),
                    hintText: "Password",
                    prefixIcon: Icon(Icons.vpn_key,color: Colors.black,),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      )


                  ),
                ),
                    SizedBox(height: 20,),
                   ButtonmemMasuk(
                       CustomStyle.buttonStyle.clone()
                           ..width(276)
                         ..height(48)
                           ..background.color(Colors.white)
                           ..border(color: Colors.transparent)
                           ..padding(top: 15)
                   ),
                    SizedBox(height: 100,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Tidak Punya Akun?" ,style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.bold,color: Colors.black),),
                        GestureDetector(
                          onTap: (){
                            Get.to(Daftar());
                          },
                            child: Text("Daftar" ,style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.bold,color: Colors.black),)
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
      ],
          ),

    );

  }
}
