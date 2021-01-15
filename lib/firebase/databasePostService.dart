import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:path/path.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';


class dataBasePostService {
  static CollectionReference dataPost = Firestore.instance.collection("post");

  Future<void> createDataUser({String judul,lihat,suka,baca})async{
    dataPost.document().setData({
      "judul" : judul,
      "lihat" : lihat,
      "suka" : suka,
      "baca" : baca

    });


  }

  static Future<void> deletePost()async{
    return await dataPost.document().get();
  }

  static Future<String> uploadkomik(File filePath)async{
    String fileName = basename(filePath.path);
    StorageReference ref = FirebaseStorage.instance.ref().child(fileName);
    StorageUploadTask task = ref.putFile(filePath);
    StorageTaskSnapshot snapshot = await task.onComplete;

    return await snapshot.ref.getDownloadURL();
  }
}
