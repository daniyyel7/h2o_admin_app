import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavigatorBarCustom extends StatefulWidget {
  const BottomNavigatorBarCustom({
    super.key,
  });

  @override
  State<BottomNavigatorBarCustom> createState() =>
      _BottomNavigatorBarCustomState();
}

class _BottomNavigatorBarCustomState extends State<BottomNavigatorBarCustom> {
  int getCurrentIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();

    switch (location) {
      case '/myorders':
        return 0;
      case '/':
        return 1;
      case '/login':
        return 2;
      default:
        return 1;
    }
  }

  void onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.goNamed('myorders_screen');
        break;
      case 1:
        context.goNamed('home_screen');
        break;
      case 2:
        context.goNamed('login_screen');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      currentIndex: getCurrentIndex(context),
      onTap: (value) => onItemTapped(context, value),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.room_preferences_outlined),
            label: 'Administrador',
            backgroundColor: Color(0xFF08A5C0)),
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: 'Perfil',
        ),
      ],
      selectedItemColor: const Color(0xFF08A5C0),
    );
  }
}
