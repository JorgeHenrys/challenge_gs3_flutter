import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../features.dart';

class HomeCardTile extends StatefulWidget {
  final List<GlobalKey> itemKeys;
  final int index;
  final int indexCard;
  final AccountModel account;

  const HomeCardTile({super.key, required this.itemKeys,
  required this.index, required this.indexCard, required this.account,});

  @override
  State<HomeCardTile> createState() => _HomeCardTileState();
}

class _HomeCardTileState extends State<HomeCardTile> {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          key: widget.itemKeys[widget.index],
          width: widget.indexCard == widget.index ? 340 : 300,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  widget.account.colorCardLightHex,
                  widget.account.colorCardDarkHex,
                ],
              ),
              borderRadius: const BorderRadius.all(Radius.circular(12))),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 15.0,
                  left: 15.0,
                  right: 15.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 56,
                          width: 88,
                          color: Gs3Colors.primaryGrey,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "•••• ${widget.account.lastNumbers}",
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Gs3Colors.primaryLight,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              widget.account.name,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Gs3Colors.primaryLight,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Gs3Icon(Gs3Icons.eyesIcon)
                  ],
                ),
              ),
              SizedBox(
                height: widget.indexCard == widget.index ? 30 : 5,
              ),
              const Divider(
                color: Gs3Colors.primaryBlue,
              ),
              SizedBox(
                height: widget.indexCard == widget.index ? 30 : 5,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 15.0,
                  left: 15.0,
                  right: 15.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Limite disponível",
                          style: TextStyle(
                            color: Gs3Colors.primaryLight,
                            fontSize: 8,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          widget.account.availableLimit,
                          style: const TextStyle(
                            color: Gs3Colors.primaryLight,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "Melhor dia de compra",
                          style: TextStyle(
                            color: Gs3Colors.primaryLight,
                            fontSize: 8,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          widget.account.buyBestDay.toString(),
                          style: const TextStyle(
                            color: Gs3Colors.primaryLight,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
