import 'package:baca_manga_initial/style/custom_style.dart';
import 'package:baca_manga_initial/ui/Button/custom_button.dart';
import 'package:baca_manga_initial/ui/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

void main(){
  runApp(Daftar());
}

class Daftar extends StatefulWidget {
  @override
  _DaftarState createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blueAccent,
          body: ListView(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: (){
                      Get.off(HomePage());
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
                    SizedBox(height: 10,),
                    Text("Daftar" ,style: GoogleFonts.poppins(fontSize: 48, fontWeight: FontWeight.bold,color: Colors.black),),
                    SizedBox(height: 150,),

                    TextField(
                      decoration: InputDecoration(
                        hintStyle: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.bold,color: Colors.black),
                        hintText: "Username",
                        prefixIcon: Icon(Icons.person,color: Colors.black,),


                      ),

                    ),
                    SizedBox(height: 30,),
                    TextField(
                      decoration: InputDecoration(
                        hintStyle: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.bold,color: Colors.black),
                        hintText: "Email",
                        prefixIcon: Icon(Icons.email,color: Colors.black,),


                      ),

                    ),
                    SizedBox(height: 30,),
                    TextField(
                      decoration: InputDecoration(
                        focusColor: Colors.black,


                        hintStyle: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.bold,color: Colors.black),
                        hintText: "Password",
                        prefixIcon: Icon(Icons.vpn_key,color: Colors.black,),



                      ),
                    ),
                    SizedBox(height: 20,),
                    ButtonmenDaftar(
                        CustomStyle.buttonStyle.clone()
                          ..width(276)
                          ..height(48)
                          ..background.color(Colors.white)
                          ..border(color: Colors.transparent)
                          ..padding(top: 15)
                    ),
                    SizedBox(height: 20,),
                    ButtonMasukGoogle(
                        CustomStyle.buttonStyle.clone()
                          ..width(276)
                          ..height(48)
                          ..background.color(Colors.white)
                          ..border(color: Colors.transparent)
                          ..padding(top: 6)

                    ),

                  ],
                ),
              ),
            ),
      ],
          ),
        ),
    );

  }
}
