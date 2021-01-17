
import 'package:baca_manga_initial/model/post_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class PostProvider with ChangeNotifier{

  static Stream<List<PostModel>> fetchAll() {
    return Firestore.instance.collection('post').snapshots().map(
            (list) => list.documents.map((doc) => PostModel.fromFireStore(doc)).toList());

  }

}