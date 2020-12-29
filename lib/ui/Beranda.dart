import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(home: Beranda()));
}

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Container(
                width: 288,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Cari",
                    fillColor: Colors.white70,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                    ),

                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.all(20),
              width: double.infinity,
              height: 300,
              
              child: Column(
                children: [
                  Container(
                    
                    width: double.infinity,
                    height: 220,
                    child: Image(image: AssetImage("assets/background.jpg"),fit: BoxFit.cover,),
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Judul")
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.remove_red_eye_rounded),
                      SizedBox(width: 20,),
                      Text("0"),
                      SizedBox(width: 20,),
                      Icon(Icons.thumb_up),
                      SizedBox(width: 20,),
                      Text("0"),

                    ],
                  )
                ],
              )

            )
          ],
        ),
      ),
    );
  }
}
