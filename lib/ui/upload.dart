import 'package:baca_manga_initial/firebase/databasePostService.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart.';
import 'package:file_picker/file_picker.dart';
import 'dart:io';


void main(){
  runApp(EditProfile());
}

class EditProfile extends StatefulWidget {

  @override
  _EditProfile createState() => _EditProfile();
}

class _EditProfile extends State<EditProfile> {

  TextEditingController id = new TextEditingController();
  String filePath;




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: ListView(
          children: [Container(
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: "Judul",


                  ),
                  controller: id, maxLength: 20, onChanged: (value) {
                  setState(() {

                  });
                },

                ),

                FloatingActionButton(
                  child: Text("Upload"),
                    onPressed:()async{
                         File file = await getFile();
                         filePath = await dataBasePostService.uploadkomik(file);
                         setState(() {

                         });
                    }
                )


              ],
            ),
          ),
      ],
        ),
      ),

    );
  }





}

Future<dynamic> getFile()async {
  return await FilePicker.getFile();
}

/*void _editProfile(String id, String nama,String dekripsi,String photo){
final data = Data(
id: id.toString(),
  nama: nama.toString(),
dekripsi: dekripsi.toString(),
photo: photo.toString(),

 );
}*/







