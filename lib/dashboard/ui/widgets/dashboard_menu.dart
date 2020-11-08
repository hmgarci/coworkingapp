import 'package:flutter/material.dart';

class DashboardMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.cyan,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(.60),
      selectedFontSize: 14,
      unselectedFontSize: 14,
      onTap: (value) {
        // Respond to item press.
      },
      items: [
        BottomNavigationBarItem(
          title: Text('Inicio'),
          icon: Icon(Icons.account_balance),
        ),
        BottomNavigationBarItem(
          title: Text('Mis grupos'),
          icon: Icon(Icons.people),
        ),
        BottomNavigationBarItem(
          title: Text('Agregar'),
          icon: Icon(Icons.add_to_photos),
        ),
        BottomNavigationBarItem(
          title: Text('chat'),
          icon: Icon(Icons.chat_bubble),
        ),
      ],
    );
  }
}