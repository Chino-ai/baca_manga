import 'package:baca_manga_initial/model/post_model.dart';
import 'package:baca_manga_initial/provider/post_provider.dart';
import 'package:baca_manga_initial/ui/main.dart';
import 'package:baca_manga_initial/ui/pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


class tabBar extends StatefulWidget {
  @override
  _tabBarState createState() => _tabBarState();
}

class _tabBarState extends State<tabBar> {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: choices.length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.redAccent,

            title: Text('Genre'),
            bottom: TabBar(
              isScrollable: true,
              tabs: choices.map<Widget>((Choice choice) {
                return Tab(
                  text: choice.title,

                );

              }).toList(),
            ),
          ),
          body: TabBarView(
            children: choices.map((Choice choice) {
              return Padding(
                padding: EdgeInsets.all(20.0),
                child: ChoicePage(
                  choice: choice,
                ),
              );

            }).toList(),
          ),
        ),
      ),
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
  final Choice choice;
  ChoicePage({this.choice});


  TextEditingController genre = new TextEditingController();
  @override
  _ChoicePageState createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> {

  @override
  Widget build(BuildContext context) {
    List<PostModel> listpost = Provider.of<List<PostModel>>(context);
    PostProvider(jenre: widget.choice.title.toString());



    return ListView.builder(
      physics: ClampingScrollPhysics(),
      itemCount:listpost.length,
      itemBuilder: (context,index) {



        return GestureDetector(
          onTap: (){
             //Get.to(PdfViewer(listpost[index].image));
            print(Text(widget.choice.title.toString()));



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
                      Text("Genre: "+widget.choice.title, style: GoogleFonts.poppins(
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





