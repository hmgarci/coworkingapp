import 'package:firebase_auth/firebase_auth.dart';
import 'package:coworking_app/user/repository/firebase_auth.dart';

class AuthRepository{
  final firebaseAuthApi= FirebaseAuthAPI();

  Future<FirebaseUser> signFirebase()=> firebaseAuthApi.signIn();

  signOut()=>firebaseAuthApi.singOut();

  Future<bool> regsiterUserFirebase(String email, String password)=> firebaseAuthApi.registerUser(email, password);

  Future<FirebaseUser> signInFirebase(String email, String password)=> firebaseAuthApi.signInFirebase(email, password);

}