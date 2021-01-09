import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DataModelUser {
String email;
String username;
String uid;
String password;
DataModelUser({this.email,this.uid,this.password,this.username});

Map toMap(DataModelUser user){
  var data = Map<String,dynamic>();
  data["uid"] = user.uid;
  data["username"] = user.username;
  data["email"] = user.email;
  data["password"] = user.password;
  return data;

}

DataModelUser.fromMap(Map<String, dynamic> mapData) {
  this.uid = mapData["uid"];
  this.username = mapData["username"];
  this.email = mapData["email"];
  this.password = mapData["password"];
}
}