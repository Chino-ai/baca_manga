
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class AuthService{
  static FirebaseAuth auth =  FirebaseAuth.instance;
  final dataUser = Firestore.instance.collection("akun");
  FirebaseUser firebaseUser;




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








}