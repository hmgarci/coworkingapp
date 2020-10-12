import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Image.asset("assets/images/logoCoworkingpng.png"),
      height: 100,
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        top: 70,
      ),
    );
  }

}