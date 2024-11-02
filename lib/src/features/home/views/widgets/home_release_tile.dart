import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../home.dart';

class HomeReleaseTile extends StatelessWidget {
  final ShoppingModel shopping;
  const HomeReleaseTile({
    super.key,
    required this.shopping,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Gs3Colors.secondaryGrey,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  padding: const EdgeInsets.all(6),
                  width: 45,
                  height: 45,
                  child: Gs3Icon(shopping.icon),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shopping.name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Gs3Colors.primaryBlack,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      shopping.buyDate,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Gs3Colors.primaryBlack,
                        fontSize: 10,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  shopping.value,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Gs3Colors.primaryBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  shopping.amountParcel == 1 ? "" : "em ${shopping.amountParcel}x",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Gs3Colors.primaryBlack,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          color: Gs3Colors.primaryGrey,
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
