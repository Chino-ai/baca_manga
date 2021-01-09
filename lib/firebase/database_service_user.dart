import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';


class dataBaseUserService {
  static CollectionReference dataUser= Firestore.instance.collection("akun");
  Future<void> createDataUser({String uid,username,email,password})async{
    dataUser.document().setData({
      "uid" : uid,
      "username" : username,
      "email" : email,
      "password" : password

    });


  }
}
