import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';


class dataBasePostService {
  static CollectionReference dataCollection = Firestore.instance.collection("data");
  static Future<void> createData()async{


  }
}
