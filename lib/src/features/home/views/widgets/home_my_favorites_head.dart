import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class HomeMyFavoritesHead extends StatelessWidget {
  const HomeMyFavoritesHead({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Meus favoritos",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Gs3Colors.primaryBlack,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        Row(
          children: [
            Text(
              "personalizar",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Gs3Colors.primaryBlack,
                fontWeight: FontWeight.bold,
                fontSize: 8,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            SizedBox(
              width: 14,
              height: 14,
              child: Gs3Icon(Gs3Icons.personalizeIcon),
            )
          ],
        )
      ],
    );
  }
}
