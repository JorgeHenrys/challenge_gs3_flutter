import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../../features.dart';

class AccountViewModel {
  final HomeService _homeService = HomeService();

  final ValueNotifier<List<AccountModel>> accounts =
      ValueNotifier<List<AccountModel>>([]);
  final ValueNotifier<List<LatestReleaseAccountModel>> shoppings =
      ValueNotifier<List<LatestReleaseAccountModel>>([]);

  bool loading = false;


  void loadAccounts() async {
    final data = await _homeService.fetchAccounts();
    accounts.value = data;
  }

  void getShoppingById(int id) async {
    loading = true;
    final data = await _homeService.fetchShoppingsByAccount(id);
    
    shoppings.value = data;
    loading = false;
    
  }
}
