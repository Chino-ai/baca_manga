import 'package:baca_manga_initial/model/post_model.dart';
import 'package:baca_manga_initial/provider/post_provider.dart';
import 'package:baca_manga_initial/main.dart';
import 'package:baca_manga_initial/ui/pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


class ListKomik extends StatefulWidget {
  @override
  _ListKomikState createState() => _ListKomikState();
}

class _ListKomikState extends State<ListKomik> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,

        title: Text('Komik Anda'),

      ),
      body: ChoicePage()
    );

  }
}
class Choice {
  final String title;

  Choice({this.title});
}

List<Choice> choices = <Choice>[
  Choice(title: 'COMEDY'),
  Choice(title: 'ROMANCE'),
  Choice(title: 'ACTION'),
  Choice(title: 'SUPERNATURAL'),
  Choice(title: 'HORROR'),
  Choice(title: 'MISTERI'),
  Choice(title: 'SCI-FI'),
];



class ChoicePage extends StatefulWidget {


  TextEditingController genre = new TextEditingController();
  @override
  _ChoicePageState createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> {

  @override
  Widget build(BuildContext context) {
    List<PostModel> listpost = Provider.of<List<PostModel>>(context);




    return ListView.builder(
      physics: ClampingScrollPhysics(),
      itemCount:listpost.length,
      itemBuilder: (context,index) {



        return GestureDetector(
          onTap: (){
            Get.to(PdfViewer(listpost[index].image));




          },
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            width: 360,
            height: 119,

            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)

            ),
            child: Row(
              children: [
                Container(
                  width: 109,
                  height: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(
                          listpost[index].thubmnail),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10)
                  ),

                ),
                SizedBox(width: 10,),
                Column(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceAround,
                    children: [
                      Text(listpost[index].judul, style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 12),),
                      SizedBox(width: 10,),
                      Text("Genre: "+ listpost[index].genre, style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 12),),
                      Row(
                        children: [
                          Icon(Icons.remove_red_eye_rounded),
                          SizedBox(width: 10,),
                          Text("0", style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 12),),
                          SizedBox(width: 10,),
                          Icon(Icons.thumb_up),
                          SizedBox(width: 10,),
                          Text("0", style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 12),),
                          SizedBox(width: 5,),

                        ],
                      ),
                      SizedBox(height: 15,)

                    ]

                )
              ],
            ),
          ),

        );


      },


    );

  }

}





