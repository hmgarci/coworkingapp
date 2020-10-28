import 'package:flutter/material.dart';

class RegistryHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "¡Regístrate!",
        style: TextStyle(
          fontSize: 50,
          color: Colors. grey
        ),
      ),
      height: 100,
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        top: 70,
      ),
    );

  }

}
