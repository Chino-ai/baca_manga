import 'package:baca_manga_initial/model/data_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class AuthService{
  static FirebaseAuth auth =  FirebaseAuth.instance;
  final dataUser = Firestore.instance.collection("akun");
  FirebaseUser firebaseUser;
  DataModelUser dataModelUser = DataModelUser();



  Future<dynamic> signUp(String email , password)async{
      try{
        AuthResult result = await auth.createUserWithEmailAndPassword(email: email, password: password);
         firebaseUser = result.user;
        return firebaseUser;
      }catch(e){
        print(e.toString());
        return null;
      }

  }

   Future<dynamic> signIn(String email,password)async{
    try{
      AuthResult result = await auth.signInWithEmailAndPassword(email: email, password: password);
       firebaseUser = result.user;
      return firebaseUser;
    }catch(e){
        print(e.toString());
        return null;
    }
  }

  static Future<void> signOut()async{
    auth.signOut();
  }


 Future<void> addUserDB({String uid,username,password,email})async{
    dataModelUser = DataModelUser(uid: uid,username: username,password: password,email: email);
    await dataUser.document(uid).setData(dataModelUser.toMap(dataModelUser));

 }

 Future<DataModelUser> getUserDB({String uid})async{
    final DocumentSnapshot doc = await dataUser.document(uid).get();
    return DataModelUser.fromMap(doc.data);
 }





}