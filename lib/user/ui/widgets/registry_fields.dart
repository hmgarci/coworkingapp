import 'package:flutter/material.dart';
import 'package:coworking_app/user/bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:coworking_app/user/ui/screens/login.dart';
import 'package:coworking_app/user/ui/widgets/alert_dialog.dart';

class RegistryForm extends StatefulWidget{

  @override
  State createState() {
    return _RegistryForm();

  }
}
class _RegistryForm extends State<RegistryForm>{

  final emailController=new TextEditingController();
  final passwordController=new TextEditingController();
  UserBloc userBloc;
  @override
  Widget build(BuildContext context) {
    userBloc=BlocProvider.of(context);
    return _registryFormScreen(context);
  }
  Widget _registryFormScreen(BuildContext context){
    final buttons=Column(
      children: <Widget>[
        Container(
          width: 350,
          height: 50,
          margin: EdgeInsets.only(
              top:40
          ),
          child: RaisedButton(
            child: Container(
              child: Text(
                "ACEPTAR",
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
              _handleCurrentCreatedUser();
            },
          ),
        ),
        Container(
          margin: EdgeInsets.only(
              top: 10
          ),
          child: FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, "/main");
            },
            child: Text(
              "Ingresa",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20
              ),
            ),
          ),
        )
      ],
    );
    final textFields=Column(
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
              labelText: 'Correo',
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
              labelText: 'Confirma contraseña',
            ),
          ),
        )
      ],
    );
    return Column(
      children: <Widget>[
        textFields,
        buttons
      ],

    );
  }

  _handleCurrentCreatedUser () async {
    print("ENTRO AL REGISTRO DEL CLIENTES ");
    bool user =await userBloc.registerUser(
        emailController.text, passwordController.text);
    if (user) {
      print("SI se creó el usuario correctamente ");
      return showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: Text("¡BIEN!"),
            content: Text("Se creó el usuario correctamente"),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              new FlatButton(
                child: new Text("Cerrar"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else {
      print("NO se creó el usuario correctamente ");
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            // return object of type Dialog
            return AlertDialog(
              title: Text("¡ERROR!"),
              content: Text("NO se creó el usuario correctamente"),
              actions: <Widget>[
                // usually buttons at the bottom of the dialog
                new FlatButton(
                  child: new Text("Cerrar"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          }
      );
    }
  }
}
