import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget{

  String path="assets/images/diseno.jpg";
  String user='';

  DashboardCard(this.path);
  @override
  Widget build(BuildContext context) {

    return Center(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                title: Text('Publicado por: hmgarci')
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 23,
                  right: 23,
                  top: 10
                ),
                child: Image.asset(path),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[

                  FlatButton(
                    child: const Text('Contacta'),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                  FlatButton(
                    child: const Text('Me gusta'),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
      );
  }
}