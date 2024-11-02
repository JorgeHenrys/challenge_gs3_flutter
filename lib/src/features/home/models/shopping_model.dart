class ShoppingModel {
  final String icon;
  final String name;
  final String buyDate;
  final String value;
  final int amountParcel;

  ShoppingModel({
    required this.icon,
    required this.name,
    required this.buyDate,
    required this.value,
    required this.amountParcel,
  });

  factory ShoppingModel.fromJson(Map<String, dynamic> json) {
    return ShoppingModel(
      icon: json['icon'],
      name: json['name'],
      buyDate: json['buy_date'],
      value: json['value'],
      amountParcel: json['amount_parcel'],
    );
  }
}
