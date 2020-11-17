import 'package:flutter/material.dart';
import 'package:coworking_app/user/ui/widgets/service_enroll_fields.dart';
import 'package:coworking_app/user/ui/screens/service_enroll_header.dart';

class ServiceEnroll extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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