import 'package:coworking_app/user/model/service_enroll.dart';
import 'package:flutter/material.dart';
import 'package:coworking_app/user/bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class ServiceEnrollFields extends StatefulWidget {
  @override
  State createState() {
    return _ServiceEnrollFields();
  }
}

class _ServiceEnrollFields extends State<ServiceEnrollFields>{
  final controllerName=TextEditingController();
  final controllerLastName=TextEditingController();
  final controllerProfession=TextEditingController();
  final controllerSkill=TextEditingController();
  final controllerService=TextEditingController();

  UserBloc userBloc;
  @override
  Widget build(BuildContext context) {
    userBloc=BlocProvider.of(context);
    return serviceEnroll(context);
  }
  Widget serviceEnroll(BuildContext context) {
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
            controller: controllerName,
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
            controller: controllerLastName,
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
            controller: controllerProfession,
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
            controller: controllerSkill,
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
            onPressed: () {
              _validateCreationEnroll();

            },
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
  _validateCreationEnroll() async{
    ServiceEnroll serviceEnroll=new ServiceEnroll(controllerService.text,
        controllerName.text, controllerLastName.text, controllerProfession.text, controllerSkill.text);
    bool op=await userBloc.clientEnroll(serviceEnroll);
    if (op) {
      print("¡¡¡¡¡¡¡Cliente enrolado!!!!");
      return showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: Text("¡BIEN!"),
            content: Text("Se guardó la información correctamente"),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              new FlatButton(
                child: new Text("Cerrar"),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, "/dashboard");
                },
              ),
            ],
          );
        },
      );
    } else {
      print("NO se creo el usuario correctamente ");
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            // return object of type Dialog
            return AlertDialog(
              title: Text("¡ERROR!"),
              content: Text("NO guardó la información correctamente"),
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
