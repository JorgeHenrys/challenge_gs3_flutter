import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../../features.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AccountViewModel _accountViewModel = AccountViewModel();
  final ScrollController _scrollController = ScrollController();
  int _focusedIndex = -1;
  int indexCard = 0;

  List<GlobalKey> _itemKeys = [];

  @override
  void initState() {
    super.initState();
    _accountViewModel.loadAccounts();
    _accountViewModel.getShoppingById(1);
    _itemKeys = List.generate(_accountViewModel.accounts.value.length, (index) => GlobalKey());
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            const HomeBackground(),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    const HomeHeading(),
                    const Divider(
                      color: Gs3Colors.primaryLight,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //HomeCards(),

                    SingleChildScrollView(
                      controller: _scrollController,
                      scrollDirection: Axis.horizontal,
                      child: ValueListenableBuilder<List<AccountModel>>(
                        valueListenable: _accountViewModel.accounts,
                        builder: (context, accounts, child) {
                          if (accounts.isEmpty) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          } else {
                            return Row(
                              children: [
                                ...accounts.map((e) => HomeCardTile(
                                  itemKeys: _itemKeys,
                                  index: accounts.indexOf(e),
                                  indexCard: indexCard,
                                  account: e,
                                ))
                              ],
                            );
                          }
                        },
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      color: Gs3Colors.primaryLight,
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    const HomeMyFavoritesHead(),
                    const SizedBox(
                      height: 20,
                    ),
                    const HomeMyFavorites(),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      color: Gs3Colors.primaryGrey,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const HomeLatestReleasesHead(),
                    const SizedBox(
                      height: 20,
                    ),
                    //HomeLatestReleases(),
                    SingleChildScrollView(
                      child: ValueListenableBuilder<
                              List<LatestReleaseAccountModel>>(
                          valueListenable: _accountViewModel.shoppings,
                          builder: (context, shoppings, child) {
                            if (shoppings.isEmpty ||
                                _accountViewModel.loading) {
                              return const Center(
                                  child: CircularProgressIndicator());
                            } else {
                              return Column(
                                children: [
                                  ...shoppings.map(
                                    (e) => HomeLatestReleases(
                                      shopping: e,
                                    ),
                                  ),
                                ],
                              );
                            }
                          }),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: const HomeBottomBar());
  }

  void _onScroll() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final RenderBox containerBox = context.findRenderObject() as RenderBox;
      final containerCenter = containerBox.size.width / 2;

      for (int i = 0; i < _accountViewModel.accounts.value.length; i++) {
        final key = _itemKeys[i];
        final RenderBox? itemBox = key.currentContext != null
            ? key.currentContext!.findRenderObject() as RenderBox
            : null;

        if (itemBox != null) {
          final itemPosition =
              itemBox.localToGlobal(Offset.zero, ancestor: containerBox);
          final itemCenter = itemPosition.dx + itemBox.size.width / 2;

          if ((itemCenter - containerCenter).abs() < 20) {
            if (_focusedIndex != i) {
              setState(() {
                _focusedIndex = i;
                indexCard = i;
                onItemInFocus(i);
              });
            }
            break;
          }
        }
      }
    });
  }

  void onItemInFocus(int index) {
    _accountViewModel.getShoppingById(index + 1);
  }
}
