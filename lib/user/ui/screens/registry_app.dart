import 'package:flutter/material.dart';
import 'regitry_header.dart';
import 'registry_fields.dart';

class RegistryApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text(
              "CoworkingApp"
          ),
        ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            RegistryHeader(),
            RegistryForm()
          ],
        ),

      ),



    );


  }

}