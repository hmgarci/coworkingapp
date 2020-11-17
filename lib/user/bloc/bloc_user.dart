import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:coworking_app/user/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserBloc implements Bloc{

  final auth_repository=AuthRepository();
  // Flujo de datos - stream firebase
  //CASOS DE USO
  //1. Autenticarse con google

  Stream<FirebaseUser> streamFirebase=FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> streamFirebaseRegister;

  Stream<FirebaseUser> get authStatus=>streamFirebase;

  Future<FirebaseUser> signIn(){
    return auth_repository.signFirebase();
  }

  Future<FirebaseUser> signInFirebase(String email, String password){
    return auth_repository.signInFirebase(email, password);
  }

  signOut(){
    auth_repository.signOut();
  }

  Future<bool> registerUser (String email, String password){
    Future<bool> user=auth_repository.regsiterUserFirebase(email, password);
    return user;
  }

  @override
  void dispose() {

  }
}