import 'package:flutter/material.dart';
import 'login_header.dart';
import 'package:coworking_app/authentication/ui/widgets/login_fields.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        LoginHeader(),
        LoginField(),
      ],
    );
  }
}


