import 'package:flutter/material.dart';

class AccountModel {
  final int id;
  final String lastNumbers;
  final String name;
  final String availableLimit;
  final int buyBestDay;
  final Color colorCardDarkHex;
  final Color colorCardLightHex;

  AccountModel({
    required this.id,
    required this.lastNumbers,
    required this.name,
    required this.availableLimit,
    required this.buyBestDay,
    required this.colorCardDarkHex,
    required this.colorCardLightHex,
  });

  factory AccountModel.fromJson(Map<String, dynamic> json) {
    return AccountModel(
      id: json['id'],
      lastNumbers: json['last_numbers'],
      name: json['name'],
      availableLimit: json['available_limit'],
      buyBestDay: json['buy_best_day'],
      colorCardDarkHex: _hexToColor(json['color_card_dark_hex']),
      colorCardLightHex: _hexToColor(json['color_card_light_hex']),
    );
  }

  static Color _hexToColor(String hex) {
    hex = hex.replaceAll("#", "");
    if (hex.length == 6) hex = "FF$hex";
    return Color(int.parse(hex, radix: 16));
  }
}
