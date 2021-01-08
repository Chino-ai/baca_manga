import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';


class dataBaseService {
  static CollectionReference dataCollection = Firestore.instance.collection("data");
  static Future<void> createData(String uid,nama,email,pass,suka,lihat,judul_komik)async{
    await dataCollection.add(data)

  }
}
