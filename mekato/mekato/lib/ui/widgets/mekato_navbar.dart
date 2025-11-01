import 'package:flutter/material.dart';
import 'package:mekato/ui/core/mekato_colors.dart';

class MekatoNavbar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const MekatoNavbar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      backgroundColor: MekatoColors.main,
      onTap: onTap,
      // selectedItemColor: const Color.fromARGB(237, 213, 176, 146),
      unselectedItemColor: Colors.white,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.stars_rounded),
          label: 'Reservas'
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person), 
          label: 'Cuenta'
          ),
      ],
    );
  }
}
