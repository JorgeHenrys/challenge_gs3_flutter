import 'dart:convert';

import 'package:flutter/services.dart';

import '../../features/features.dart';

class HomeService {
  Future<List<AccountModel>> fetchAccounts() async {
    await Future.delayed(const Duration(seconds: 2));

    final String response =
        await rootBundle.loadString('assets/mocks/mock_accounts.json');
    final List<dynamic> data = json.decode(response);

    return data.map((json) => AccountModel.fromJson(json)).toList();
  }

  Future<List<LatestReleaseAccountModel>> fetchShoppingsByAccount(
      int accountId) async {
    await Future.delayed(const Duration(seconds: 2));
    
    final String response;

    switch (accountId) {
      case 1:
        response = await rootBundle
            .loadString('assets/mocks/mock_latest_release_account_1.json');
      case 2:
        response = await rootBundle
            .loadString('assets/mocks/mock_latest_release_account_2.json');
      case 3:
        response = await rootBundle
            .loadString('assets/mocks/mock_latest_release_account_3.json');
      default:
        response = '';
    }

    final List<dynamic> data = json.decode(response);

    return data
        .map((json) => LatestReleaseAccountModel.fromJson(json))
        .toList();
  }
}
