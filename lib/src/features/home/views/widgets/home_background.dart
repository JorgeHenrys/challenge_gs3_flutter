import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class HomeBackground extends StatelessWidget {
  const HomeBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Gs3Colors.primaryBlue,
              Gs3Colors.primaryLight,
              Gs3Colors.primaryLight,
            ],
          ),
        ),
      ),
    );
  }
}
