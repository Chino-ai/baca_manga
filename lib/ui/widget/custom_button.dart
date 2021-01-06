import 'package:baca_manga_initial/firebase/auth_service.dart';
import 'package:baca_manga_initial/ui/bottom_navigation_bar.dart';
import 'package:baca_manga_initial/ui/daftar.dart';
import 'package:baca_manga_initial/ui/masuk.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:division/division.dart';
import 'package:baca_manga_initial/style/custom_style.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';



class ButtonDaftar extends StatefulWidget {
  final ParentStyle buttonStyle;

  ButtonDaftar(this.buttonStyle);
  @override
  _ButtonDaftarState createState() => _ButtonDaftarState();
}

class _ButtonDaftarState extends State<ButtonDaftar> {

  @override
  Widget build(BuildContext context) {
    return Parent(
         child: Container(
           child: Txt(
            "Daftar",
                 style: CustomStyle.txtStyle.clone()
                   ..textAlign.center()
           ),
         ),
         style: widget.buttonStyle

      ,


         gesture: Gestures()
                    ..onTap((){
                      Get.to(Daftar());
                    })


              ,


    );
  }
}

class ButtonMasuk extends StatefulWidget {
  final ParentStyle buttonStyle;

  ButtonMasuk(this.buttonStyle);
  @override
  _ButtonMasukState createState() => _ButtonMasukState();
}

class _ButtonMasukState extends State<ButtonMasuk> {

  @override
  Widget build(BuildContext context) {
    return Parent(
      child: Container(
        child: Txt(
          "Masuk",
          style: CustomStyle.txtStyle.clone()
            ..textAlign.center()
        ),
      ),

      style: widget.buttonStyle

      ,


      gesture: Gestures()
                    ..onTap((){
                         Get.to(Masuk());
                    })


              ,


    );
  }
}

class ButtonmenDaftar extends StatefulWidget {
   ParentStyle buttonStyle;
   String email,pass;

  ButtonmenDaftar(this.buttonStyle,this.email,this.pass);
  @override
  _ButtonmenDaftarState createState() => _ButtonmenDaftarState();
}

class _ButtonmenDaftarState extends State<ButtonmenDaftar> {
  

  @override
  Widget build(BuildContext context) {
    return Parent(
      child: Container(
        child: Txt(
          "Daftar",
          style: CustomStyle.txtStyle.clone()
          ..border()
            ..fontSize(13)
          ..textAlign.center()
          ,
        ),
      ),
      style: widget.buttonStyle

      ,


      gesture: Gestures()
        ..onTap(()async{
           await AuthService.signUp(widget.email.toString(), widget.pass.toString());

           Get.to(bottomNavigasionBar());
        })


      ,


    );
  }
}
class ButtonmemMasuk extends StatefulWidget {
  final ParentStyle buttonStyle;
  String email,pass;

  ButtonmemMasuk(this.buttonStyle,this.email,this.pass);
  @override
  _ButtonmemMasukState createState() => _ButtonmemMasukState();
}

class _ButtonmemMasukState extends State<ButtonmemMasuk> {

  @override
  Widget build(BuildContext context) {
    return Parent(
      child: Container(
        child: Txt(
          "Masuk",
          style: CustomStyle.txtStyle.clone()
            ..border()
            ..fontSize(13)
            ..textAlign.center()
          ,
        ),
      ),
      style: widget.buttonStyle

      ,


      gesture: Gestures()
        ..onTap(()async{
          if(AuthService.auth.currentUser() !=null){
            await AuthService.signIn(widget.email.toString(), widget.pass.toString());
            Get.to(bottomNavigasionBar());
          }else if(AuthService.auth.currentUser() == null){
            print("salah");
          }

        })


      ,


    );
  }
}

class ButtonMasukGoogle extends StatefulWidget {
  final ParentStyle buttonStyle;

  ButtonMasukGoogle(this.buttonStyle);
  @override
  _ButtonMasukGoogleState createState() => _ButtonMasukGoogleState();
}

class _ButtonMasukGoogleState extends State<ButtonMasukGoogle> {

  @override
  Widget build(BuildContext context) {
    return Parent(
      child: Container(
        margin: EdgeInsets.only(right: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(right: 40),
              width: 19,
              height: 17,
              child: Image(image: AssetImage("assets/google.png"),fit: BoxFit.cover),
            ),

            Txt(
              "Daftar Dengan Google",
              style: CustomStyle.txtStyle.clone()
                ..border()
                ..fontSize(13)
                ..textAlign.center()

              ,
            ),
          ],
        ),

      ),
      style: widget.buttonStyle


      ,


      gesture: Gestures()
        ..onTap((){
          print(Text("dari class"));
        })


      ,


    );
  }
}





