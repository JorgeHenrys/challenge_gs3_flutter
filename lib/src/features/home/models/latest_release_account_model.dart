import 'shopping_model.dart';

class LatestReleaseAccountModel {
  final String day;
  final List<ShoppingModel> shopping;

  LatestReleaseAccountModel({
    required this.day,
    required this.shopping,
  });

  factory LatestReleaseAccountModel.fromJson(Map<String, dynamic> json) {
    final List<dynamic> userJsonList = json['shopping'] ?? [];
    final List<ShoppingModel> shoppings =
        userJsonList.map((json) => ShoppingModel.fromJson(json)).toList();

    return LatestReleaseAccountModel(
      day: json['day'],
      shopping: shoppings,
    );
  }
}
