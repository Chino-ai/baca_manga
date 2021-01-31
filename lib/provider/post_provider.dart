
import 'package:baca_manga_initial/model/post_model.dart';
import 'package:baca_manga_initial/ui/tampilan/tabBar.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PostProvider with ChangeNotifier{
String jenre;
PostProvider({this.jenre});



  static Stream<List<PostModel>> fetchAll() {
    return Firestore.instance.collection('post').snapshots().map(
            (list) => list.documents.map((doc) => PostModel.fromFireStore(doc)).toList());

  }

     Stream<List<PostModel>> genre() {
    return Firestore.instance
        .collection('post')
        .where('genre', isEqualTo: jenre )
        .snapshots()
        .map(
            (list) => list.documents.map((doc) => PostModel.fromFireStore(doc)).toList());
  }

}