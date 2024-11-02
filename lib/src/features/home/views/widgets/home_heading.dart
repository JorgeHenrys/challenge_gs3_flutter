import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class HomeHeading extends StatelessWidget {
  const HomeHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Gs3Icon(Gs3Icons.menuIcon),
          Row(
            children: [
              Text(
                "Olá, ",
                style: TextStyle(
                  color: Gs3Colors.primaryLight,
                  fontSize: 17,
                ),
              ),
              Text(
                "Cliente",
                style: TextStyle(
                  color: Gs3Colors.primaryLight,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Row(
            children: [
              Gs3Icon(Gs3Icons.chatIcon),
              SizedBox(
                width: 5,
              ),
              Gs3Icon(Gs3Icons.notifyIcon),
            ],
          )
        ],
      ),
    );
  }
}
