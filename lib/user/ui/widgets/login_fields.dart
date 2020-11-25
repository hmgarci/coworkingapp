import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:coworking_app/user/bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
class LoginField extends StatefulWidget{



  @override
  State createState() {
    return _LoginField();
  }
}

class _LoginField extends State<LoginField>{

  final emailController=new TextEditingController();
  final passwordController=new TextEditingController();
  UserBloc userBloc;
  @override
  Widget build(BuildContext context) {
    userBloc=BlocProvider.of(context);
    return fields();

  }
  Widget fields(){
    final forgotPassword=Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
              top: 20,
              left: 20
          ),
          child: Column(
            children: <Widget>[
              Container(
                child: Text(
                  "¿Olvidaste tu contraseña?",
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
              Container(

                child: FlatButton(
                  onPressed: () {
                    //Navigator.pushNamed(context, "/registry");
                    Navigator.pushNamed(context, "/registry");
                  },
                  child: Text(
                    "¿No tienes una cuenta?",
                    style: TextStyle(
                        color: Colors.grey
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
    final buttons=Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 350,
          height: 50,
          margin: EdgeInsets.only(
              top:40
          ),
          child: RaisedButton(
            onPressed: () {
              //Navigator.pushNamed(context, "/registry");
              //Navigator.pushNamed(context, "/service-enroll");
              userBloc.signInFirebase(emailController.text, passwordController.text).then((UserCredential user) =>
                  print("El usuario es: ${user.additionalUserInfo.username}"));
            },
            child: Container(
              child: Text(
                "INGRESAR",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),

              ),
            ),
            color: Colors.cyan,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        ),
        Container(
          width: 350,
          height: 50,
          margin: EdgeInsets.only(
              top:10
          ),
          child: RaisedButton(
            child: Container(
              child: Text(
                "INGRESA CON GOOGLE",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),
              ),
            ),
            color: Colors.cyan,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            onPressed: () {
              userBloc.signIn().then((UserCredential user) =>
                  print("El usuario es: ${user.additionalUserInfo.username}"));
            },
          ),
        )
      ],

    );

    final loginFields=Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
              top: 50
          ),
          width: 350,
          child: TextField(
            controller: emailController,
            cursorColor: Colors.cyan,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(40)
                  )
              ),
              labelText: 'Usuario',
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
              top: 10
          ),
          width: 350,
          child: TextField(
            controller: passwordController,
            cursorColor: Colors.cyan,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(40)
                  )
              ),
              labelText: 'Contraseña',
            ),
          ),
        )
      ],
    );

    return Column(
      children: <Widget>[
        loginFields,
        buttons,
        forgotPassword
      ],
    );
  }

  }