import 'package:baca_manga_initial/firebase/auth_service.dart';
import 'package:baca_manga_initial/model/post_model.dart';
import 'package:baca_manga_initial/provider/post_provider.dart';
import 'package:baca_manga_initial/ui/splesh_screen.dart';
import 'package:baca_manga_initial/ui/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/utils.dart';
import 'package:provider/provider.dart';

void main() {

  runApp(MyApp());

  
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {

    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);

  }

  @override
  Widget build(BuildContext context) {
    PostProvider postProvider = PostProvider();

    return MultiProvider(
      providers: [
        StreamProvider(create: (context) => PostProvider.fetchAll(),
          initialData: List<PostModel>(),),
        StreamProvider(create: (context) => postProvider.genre(),
          initialData: List<PostModel>(),),
        StreamProvider.value(value: AuthService.firebaseUserStream)

      ],
      child: GetMaterialApp(

        debugShowCheckedModeBanner: false,

        home: Wrapper(),
      ),
    );
  }
}


/*class MyApp extends StatelessWidget {




  @override
  Widget build(BuildContext context) {



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
}*/
