import 'package:firebase_auth/firebase_auth.dart';
class AuthService{
  static FirebaseAuth auth =  FirebaseAuth.instance;

  static Future<FirebaseUser> signUp(String email , password)async{
    try{
      AuthResult result = await auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser firebaseUser = result.user;
      return firebaseUser;
    }catch(e){
      print(e.toString());
      return null;
    }

  }

  static Future<FirebaseUser> signIn(String email,password)async{
    try{
      AuthResult result = await auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser firebaseUser = result.user;
      return firebaseUser;
    }catch(e){
        print(e.toString());
        return null;
    }
  }

  static Future<void> signOut()async{
    auth.signOut();
  }
 

  static Future<FirebaseUser> getUser()async{
    FirebaseUser firebaseUser = await auth.currentUser();
    return firebaseUser;
  }

  static Stream<FirebaseUser> get firebaseUser => auth.onAuthStateChanged;
}