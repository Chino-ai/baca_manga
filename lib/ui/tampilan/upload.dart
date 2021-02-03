import 'package:baca_manga_initial/firebase/databasePostService.dart';
import 'package:baca_manga_initial/model/post_model.dart';
import 'package:baca_manga_initial/provider/post_provider.dart';
import 'package:baca_manga_initial/ui/tampilan/Beranda.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart.';
import 'package:file_picker/file_picker.dart';
import 'dart:io';

//maul
class EditProfile extends StatefulWidget {

  @override
  _EditProfile createState() => _EditProfile();
}

class _EditProfile extends State<EditProfile> {


  TextEditingController id = new TextEditingController();
  TextEditingController genre = new TextEditingController();


  TextEditingController judul = new TextEditingController();

  TextEditingController uploud = new TextEditingController();
  TextEditingController thumbnailControl = new TextEditingController();
String filePath1,filePath2;
File fileThubmnail,fileKomik;
  String thumbnail,uploadFile;







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
                    labelText: "Buat Judul",
                  ),
                  controller: judul, maxLength: 20, onChanged: (value) {
                  setState(() {
                  });
                },
                ),
                //
                TextField(
                  decoration: InputDecoration(
                    labelText: "Genre",
                  ),
                  controller: genre, maxLength: 20, onChanged: (value) {
                  setState(() {
                  });
                },
                ),
                //
                Row(
                  children: [
                    Container(
                      width: 200,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: (uploadFile!=null)? uploadFile.toString() : "Upload Komik",
                        ),
                        controller: uploud, maxLength: 20, onChanged: (value) {
                        setState(() {
                        });
                      },
                      ),
                    ),
                    SizedBox(width: 5,),
                    RaisedButton(onPressed: ()async{
                      fileKomik = await getFile();
                      uploadFile = fileKomik.toString();
                      setState(() {

                      });

                    })
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 200,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: (thumbnail!=null)? thumbnail.toString() : "Thumbnail",


                        ),
                        controller: thumbnailControl, maxLength: 20, onChanged: (value) {
                        setState(() {

                        });
                      },

                      ),
                    ),
                    SizedBox(width: 5,),
                    RaisedButton(onPressed: ()async{
                      fileThubmnail = await getFile();
                      thumbnail = fileThubmnail.toString();
                      setState(() {

                      });

                    })
                  ],
                ),

                FloatingActionButton(
                  child: Text("Upload"),
                    onPressed:()async{

                         filePath1 = await dataBasePostService.uploadkomik(fileKomik);
                         filePath2 = await dataBasePostService.uploadkomik(fileThubmnail);


                        dataBasePostService.createaDataPost(judul:judul.text,genre: genre.text,image: filePath1,thubmnail:filePath2 );



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







