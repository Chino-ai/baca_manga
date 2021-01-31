import 'package:baca_manga_initial/model/post_model.dart';
import 'package:baca_manga_initial/provider/post_provider.dart';
import 'package:baca_manga_initial/ui/splesh_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';

void main() {

  runApp(MyApp());

  
}

class MyApp extends StatelessWidget {




  @override
  Widget build(BuildContext context) {

    PostProvider postProvider = PostProvider();

    return MultiProvider(
      providers: [
        StreamProvider(create: (context) => PostProvider.fetchAll(),
          initialData: List<PostModel>(),),
        StreamProvider(create: (context) => postProvider.genre(),
          initialData: List<PostModel>(),),

      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,

        home: SplashScreen(),
      ),
    );
  }
}
