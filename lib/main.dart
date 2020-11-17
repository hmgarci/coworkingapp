import 'package:flutter/material.dart';
import 'package:coworking_app/user/ui/screens/login.dart';
import 'package:coworking_app/user/ui/screens/registry_app.dart';
import 'package:coworking_app/user/ui/screens/service_enroll.dart';
import 'package:coworking_app/dashboard/ui/screens/dashboard_app.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:coworking_app/user/bloc/bloc_user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            routes: <String, WidgetBuilder>{
              "/main":(BuildContext context)=>MyApp(),
              "/registry":(BuildContext context)=>RegistryApp(),
              "/service-enroll":(BuildContext context)=>ServiceEnroll(),
              "/dashboard":(BuildContext context)=>DashboardApp()
            },
            home: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.cyan,
                  title: Text(
                      "CoworkingApp"
                  ),
                ),
                body: Login()
            )


        ),
        bloc: UserBloc()
    );
  }
}
