import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../features.dart';

class HomeLatestReleases extends StatelessWidget {
  final LatestReleaseAccountModel shopping;
  const HomeLatestReleases({
    super.key,
    required this.shopping,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          shopping.day,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Gs3Colors.primaryBlue,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Column(
          children: [
            ...shopping.shopping.map(
              (e) => HomeReleaseTile(
                shopping: e,
              ),
            )
          ],
        ),
      ],
    );
  }
}
