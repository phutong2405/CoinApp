import 'package:coin_app/models/dummy_wallet.dart';
import 'package:coin_app/widgets/wallet_widgets/wallet_card.dart';
import 'package:flutter/material.dart';

class WalletList extends StatelessWidget {
  const WalletList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: walletLists.length,
      itemBuilder: (context, index) {
        return WalletCard(
          walletItem: walletLists[index],
        );
      },
    );
  }
}
