import 'package:flutter/material.dart';
import 'package:coworking_app/authentication/Login.dart';
import 'package:coworking_app/registry/registry_app.dart';
import 'service_enroll/service_enroll.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: <String, WidgetBuilder>{
        "/main":(BuildContext context)=>MyApp(),
        "/registry":(BuildContext context)=>RegistryApp(),
        "/service-enroll":(BuildContext context)=>ServiceEnroll()
      },
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          "CoworkingApp"
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Login()
            //ServiceEnroll()
            //RegistryApp()

          ],
        ),
      )

    )


    );
  }
}
