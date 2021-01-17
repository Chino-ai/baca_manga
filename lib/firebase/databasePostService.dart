import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:path/path.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';


class dataBasePostService {
  static CollectionReference dataPost = Firestore.instance.collection("post");

  static Future<void> createaDataPost({String judul,lihat,suka,image,genre,thubmnail})async{
    dataPost.document().setData({
      "judul" : judul,
      "lihat" : lihat,
      "image" : image,
      "suka" : suka,
      "genre" : genre,
      "thubnail" :thubmnail,


    });


  }
  static Future<void> getPost()async{
    return await dataPost.document().get();
  }
  static Future<void> deletePost()async{
    return await dataPost.document().delete();
  }

  static Future<String> uploadkomik(File filePath)async{
    String fileName = basename(filePath.path);
    StorageReference ref = FirebaseStorage.instance.ref().child(fileName);
    StorageUploadTask task = ref.putFile(filePath);
    StorageTaskSnapshot snapshot = await task.onComplete;

    return await snapshot.ref.getDownloadURL();
  }
}
