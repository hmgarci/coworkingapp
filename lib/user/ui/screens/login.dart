import 'package:flutter/material.dart';
import 'login_header.dart';
import 'package:coworking_app/user/ui/widgets/login_fields.dart';
import 'package:coworking_app/user/bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:coworking_app/user/ui/screens/service_enroll.dart';
import 'package:coworking_app/user/ui/widgets/alert_dialog.dart';

class Login extends StatefulWidget{
  @override
  State createState() {
    return _Login();
  }
}

Widget _loginScreen(){
  return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          LoginHeader(),
          LoginField(),
        ],
      )
  );
}

class _Login extends State<Login>{

  UserBloc userBloc;
  @override
  Widget build(BuildContext context) {

    userBloc=BlocProvider.of(context);
    return _handleCurrentSession();

  }

   _handleCurrentSession(){
    Alert aler=new Alert("¡ERROR!", "Autenticación fallida");
    return StreamBuilder(
      stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        //snapshot- data - Object User
        if(!snapshot.hasData || snapshot.hasError) {
          return _loginScreen();
        } else {
          return ServiceEnroll();
        }
      },
    );

  }
}


