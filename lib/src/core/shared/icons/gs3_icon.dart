import 'package:flutter/cupertino.dart';

class Gs3Icon extends StatelessWidget {
  final String icon;
  final Color? color;
  final double? size;

  const Gs3Icon(this.icon, {super.key, this.color, this.size});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      icon,
      color: color,
      fit: BoxFit.contain,
      height: size ?? 24.0,
      width: size ?? 24.0,
    );
  }
}
