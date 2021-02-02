import 'package:baca_manga_initial/ui/home_page.dart';
import 'package:baca_manga_initial/ui/splesh_screen.dart';
import 'package:baca_manga_initial/ui/bottom_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseUser firebaseUser = Provider.of<FirebaseUser>(context);
    return (firebaseUser == null)?   HomePage() : bottomNavigasionBar(user: firebaseUser);
  }
}
