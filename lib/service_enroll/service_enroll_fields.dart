import 'package:flutter/material.dart';

class ServiceEnrollFields extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    String dropdownValue = '¿Qué servicio nos quieres ofrecer?';
    final serviceList=Container(
      margin: EdgeInsets.only(
          top: 10
      ),
      width: 320,
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: Container(
          width: 60,
          child: Icon(Icons.arrow_downward),
        ),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.grey,fontSize: 15),
        underline: Container(
          height: 2,
          color: Colors.cyan,
        ),
        onChanged: (String newValue) {

        },
        items: <String>['¿Qué servicio nos quieres ofrecer?', 'Desarrollo', 'Diseño', 'Arquitectura', 'Fontaneria']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
    final textFields=Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
              top: 20
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
              labelText: 'Nombre',
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
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(40)
                  )
              ),
              labelText: 'Apellidos',
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
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(40)
                  )
              ),
              labelText: 'Profesion',
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
              top: 10
          ),
          width: 350,
          child: TextField(
            maxLines: 8,
            cursorColor: Colors.cyan,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(40)
                  )
              ),
              //labelText: 'Cuéntanos lo que sabes hacer',
              hintText: 'Cuéntanos lo que sabes hacer',

            ),
          ),
        ),
        Container(
          width: 350,
          height: 50,
          margin: EdgeInsets.only(
              top:20
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
        )
      ],
    );


    return Column(
      children: <Widget>[
        serviceList,
        textFields
      ],

    );


  }

}