import 'package:baca_manga_initial/ui/style/custom_style.dart';
import 'package:baca_manga_initial/ui/widget/custom_button.dart';
import 'package:baca_manga_initial/ui/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';



class Daftar extends StatefulWidget {
  @override
  _DaftarState createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  TextEditingController usernameController = new TextEditingController(text: "");
  TextEditingController emailController = new TextEditingController(text: "");
  TextEditingController passController = new TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.blueAccent,
          body: ListView(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: (){
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
                    SizedBox(height: 10,),
                    Text("Daftar" ,style: GoogleFonts.poppins(fontSize: 48, fontWeight: FontWeight.bold,color: Colors.black),),
                    SizedBox(height: 150,),

                    TextField(
                      decoration: InputDecoration(
                        hintStyle: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.bold,color: Colors.black),
                        hintText: "Username",

                        prefixIcon: Icon(Icons.person,color: Colors.black,),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          )


                      ),
                      controller: usernameController, maxLength: 20 , onChanged: (value){
                      setState(() {

                      });
                    },

                    ),
                    SizedBox(height: 30,),
                    TextField(
                      decoration: InputDecoration(
                        hintStyle: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.bold,color: Colors.black),
                        hintText: "Email",
                        prefixIcon: Icon(Icons.email,color: Colors.black,),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          )


                      ),
                          controller: emailController, maxLength: 20 , onChanged: (value){
                                 setState(() {
                                   
                                 });
                          },
                    ),
                    SizedBox(height: 30,),
                    TextField(
                      decoration: InputDecoration(
                        focusColor: Colors.black,


                        hintStyle: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.bold,color: Colors.black),
                        hintText: "Password",
                        prefixIcon: Icon(Icons.vpn_key,color: Colors.black,),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          )



                      ),
                      controller: passController, maxLength: 20 , onChanged: (value){
                                 setState(() {
                                   
                                 });
                          },
                    ),
                    SizedBox(height: 20,),
                    ButtonmenDaftar(
                        CustomStyle.buttonStyle.clone()
                          ..width(276)
                          ..height(48)
                          ..background.color(Colors.white)
                          ..border(color: Colors.transparent)
                          ..padding(top: 15)
                          ,emailController.text,passController.text,usernameController.text
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

    );

  }
}
