import 'package:flutter/material.dart';
import 'service_enroll_header.dart';
import 'service_enroll_fields.dart';

class ServiceEnroll extends StatelessWidget{
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
           ServiceEnrollHeader(),
            ServiceEnrollFields()
          ],
        ),

      ),



    );
  }

}