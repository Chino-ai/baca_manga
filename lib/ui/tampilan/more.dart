import 'package:baca_manga_initial/firebase/auth_service.dart';
import 'package:baca_manga_initial/ui/edit_akun_setting.dart';
import 'package:baca_manga_initial/ui/home_page.dart';
import 'package:baca_manga_initial/ui/list_komik.dart';
import 'package:flutter/material.dart';
import 'package:baca_manga_initial/ui/profil_menu.dart';
import 'package:baca_manga_initial/ui/widget/profile_format.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../edit_akun.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../edit_akun_notifikasi.dart';



class More extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "Akun",
            icon: "assets/icons/User Icon.svg",
            press: () => {
              Get.to(EditAkun())
            },
          ),
          ProfileMenu(
            text: "Komik Anda",
            icon: "assets/icons/Heart Icon.svg",
            press: () => {
              Get.to(ListKomik())
            },
          ),
          ProfileMenu(
            text: "Notifikasi",
            icon: "assets/icons/Bell.svg",
            press: () => {
              Get.to(EditAkunNotifikasi())
            },
          ),
          ProfileMenu(
            text: "Pengaturan",
            icon: "assets/icons/Settings.svg",
            press: () => {
              Get.to(EditAkunSettingPage())
            },
          ),
          ProfileMenu(
            text: "Bantuan",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {
              AuthService auth = new AuthService();
              AlertDialog alertDialog = new AlertDialog(
                title: Text("Log Out",style:GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold) ,),
                content: new Text("Apakah anda ingin Logout",
                  style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                actions: [
                  FlatButton(
                      onPressed: () {
                        AuthService.signOut();
                        if(auth.firebaseUser==null){
                          Get.offAll(HomePage());
                        }
                      },
                      child: Text("Ya" ,style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold),)
                  ),
                  FlatButton(
                      onPressed: () {
                       Get.back();

                      },
                      child: Text("Tidak" ,style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold),)
                  ),
                ],
              );
              showDialog(context: context,
                  child: alertDialog,
                  barrierDismissible: true);


            },
          ),
        ],
      ),
    );
  }
}

