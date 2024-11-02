import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, -5),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Gs3Icon(Gs3Icons.homeIcon),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Gs3Icon(Gs3Icons.documentIcon),
              label: 'Fatura',
            ),
            BottomNavigationBarItem(
              icon: Gs3Icon(Gs3Icons.cardIcon),
              label: 'Cartão',
            ),
            BottomNavigationBarItem(
              icon: Gs3Icon(Gs3Icons.shopIcon),
              label: 'Shop',
            ),
          ],
          currentIndex: 0,
          selectedItemColor: Gs3Colors.primaryBlue,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          elevation: 0, 
        ),
      );
  }
}