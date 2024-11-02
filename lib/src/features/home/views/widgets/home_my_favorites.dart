import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class HomeMyFavorites extends StatelessWidget {
  const HomeMyFavorites({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        width: double.maxFinite,
        child: Row(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 66,
                  width: 66,
                  child: Gs3Icon(Gs3Icons.cardEmailIcon),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Cartão virtual",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Gs3Colors.primaryBlack,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 40,
            ),
            Column(
              children: [
                SizedBox(
                  height: 66,
                  width: 66,
                  child: Gs3Icon(Gs3Icons.cardPlusIcon),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Cartão adicional",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Gs3Colors.primaryBlack,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 40,
            ),
            Column(
              children: [
                SizedBox(
                  height: 66,
                  width: 66,
                  child: Gs3Icon(Gs3Icons.securityIcon),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Seguros",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Gs3Colors.primaryBlack,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
