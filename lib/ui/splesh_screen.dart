import 'dart:async';

import 'package:flutter/material.dart';
import 'package:baca_manga_initial/ui/home_page.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    mulaiSpleshScreen();
  }

  mulaiSpleshScreen()async{
    var duration  = const Duration(seconds: 5);
    return Timer(duration,(){
      /*Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (_){
            return HomePage();
          }
      ));*/
      Get.off(HomePage());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text("Baca Manga",
                  style: GoogleFonts.poppins(
                    color: Colors.white,fontWeight: FontWeight.bold,fontSize: 50
                  ),
               )
             ],
           ),
      ),
    );
  }
}
