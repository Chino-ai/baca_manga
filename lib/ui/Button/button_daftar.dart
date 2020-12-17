import 'package:flutter/material.dart';
import 'package:division/division.dart';
import 'package:baca_manga_initial/style/custom_style.dart';



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
                 style: CustomStyle.txtStyle,
           ),
         ),
         style: widget.buttonStyle.clone()

      ,


         /* gesture: Gestures()
                    ..onTap((){
                      print(Text("dari class"));
                    })
           
             
              ,*/


    );
  }
}

