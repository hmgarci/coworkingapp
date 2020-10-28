import 'package:flutter/material.dart';

class ServiceEnrollHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "¡Cúentanos sobre tí!",
        style: TextStyle(
            fontSize: 30,
            color: Colors.grey
        ),
      ),
      height: 100,
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        top: 0,
      ),
    );
  }

}