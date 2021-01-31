import 'package:baca_manga_initial/ui/tampilan/tabBar.dart';
import 'package:baca_manga_initial/ui/tampilan/Beranda.dart';
import 'package:baca_manga_initial/ui/tampilan/upload.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'tampilan/more.dart';

void main() {
  runApp(MaterialApp(home: bottomNavigasionBar()));
}


class bottomNavigasionBar extends StatefulWidget {
  @override
  _bottomNavigasionBarState createState() => _bottomNavigasionBarState();
}

class _bottomNavigasionBarState extends State<bottomNavigasionBar> {
  String filePath;
  int _selectedTabIndex = 0;
  void _onNavBarTapped(int index){
    setState(() {
      _selectedTabIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
   List<dynamic> page = [
      Beranda(),
      EditProfile(),
     tabBar(),
     More(),


   ];
     final _bottomNavBarItems = <BottomNavigationBarItem>[
       BottomNavigationBarItem(
           icon: Icon(Icons.home),
           title: Text("Beranda",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.bold),)
       ),
       BottomNavigationBarItem(
           icon: Icon(Icons.add_circle_outline),
           title: Text("Uploud",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.bold),)
       ),
      BottomNavigationBarItem(
          icon: Icon(Icons.select_all),
          title: Text("Genre",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.bold),)
      ),

       BottomNavigationBarItem(
           icon: Icon(Icons.more_horiz),
           title: Text("More",style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.bold),)
       ),

    ];

    final _BottomNavBar = BottomNavigationBar(
      items: _bottomNavBarItems,
      currentIndex: _selectedTabIndex,
      selectedItemColor: Color.fromRGBO(247, 209, 209, 1),
      unselectedItemColor: Colors.black,
      onTap: _onNavBarTapped,

    );

    return Scaffold(
      body: Container(
           child: page[_selectedTabIndex]
   ),
        bottomNavigationBar: _BottomNavBar,


    );

  }
}


