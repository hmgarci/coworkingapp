import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthAPI{

  final FirebaseAuth firebaseAuth=FirebaseAuth.instance;
  final GoogleSignIn googleSignIn=GoogleSignIn();

  Future<UserCredential> signIn() async{
    GoogleSignInAccount googleSignInAccount= await googleSignIn.signIn();
    GoogleSignInAuthentication authentication=await googleSignInAccount.authentication;
    
    UserCredential user=await firebaseAuth.signInWithCredential(
      GoogleAuthProvider.credential(idToken: authentication.idToken, accessToken: authentication.accessToken)
    );
    return user;
  }
   Future<UserCredential> signInFirebase(String email, String password) async{
     UserCredential user= await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    return user;
   }

  void singOut() async {
    await firebaseAuth.signOut().then((value) => print("Sesion cerrada!!!!!!!!!!!"));
    googleSignIn.signOut();
    print("Sesiones cerradas!!!!!!!!!!!!!!!");
  }

  Future<bool> registerUser(String email, String password,) async{
    try{
      UserCredential user=await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      return true;
    } catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
      return false;
    }
  }
}