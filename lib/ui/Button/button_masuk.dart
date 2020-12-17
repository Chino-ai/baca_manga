import 'package:flutter/material.dart';
import 'package:division/division.dart';
import 'package:baca_manga_initial/style/custom_style.dart';



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

