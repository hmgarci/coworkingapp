import 'package:flutter/material.dart';
import 'dashboard_card.dart';

class CardList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          DashboardCard("assets/images/diseno.jpg"),
          DashboardCard("assets/images/software.jpeg")
        ],
      ),
    );
  }
}