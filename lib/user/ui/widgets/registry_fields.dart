import 'package:flutter/material.dart';

class RegistryForm extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

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
            onPressed: () {},
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

}