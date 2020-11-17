import 'package:flutter/material.dart';
import 'package:coworking_app/user/bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class DashboardMenu extends StatelessWidget {

  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
      userBloc=BlocProvider.of(context);
      return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.cyan,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(.60),
      selectedFontSize: 14,
      unselectedFontSize: 14,
      onTap: (value) {
        userBloc.signOut();
        Navigator.pushNamed(context, "/main");

      },
      items: [
        BottomNavigationBarItem(
          title: Text('Inicio'),
          icon: Icon(Icons.account_balance),
        ),
        BottomNavigationBarItem(
          title: Text('chat'),
          icon: Icon(Icons.chat_bubble),
        ),
        BottomNavigationBarItem(
          title: Text('Agregar'),
          icon: Icon(Icons.add_to_photos),
        ),
        BottomNavigationBarItem(
          title: Text('Cerrar'),
          icon: Icon(Icons.exit_to_app),
        ),
      ],
    );
  }
}