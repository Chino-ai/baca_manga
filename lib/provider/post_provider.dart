
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class PostProvider with ChangeNotifier{

  String judul;
  String filePath;

  PostProvider({this.judul,this.filePath});

  static List<PostProvider> post;
}