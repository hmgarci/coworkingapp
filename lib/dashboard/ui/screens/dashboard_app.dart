import 'package:flutter/material.dart';
import 'package:coworking_app/dashboard/ui/widgets/dashboard_menu.dart';
import 'package:coworking_app/dashboard/ui/screens/card_list.dart';

class DashboardApp extends StatelessWidget{

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
            CardList()

          ],
        ),

      ),
        bottomNavigationBar: DashboardMenu()



    );
  }
}