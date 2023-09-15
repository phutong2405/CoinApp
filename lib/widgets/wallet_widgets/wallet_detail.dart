import 'package:coin_app/models/dummy_wallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WalletDialog extends StatelessWidget {
  const WalletDialog({super.key, required this.walletItem});
  final WalletItem walletItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: 400,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton.icon(
            label: Text(
              walletItem.name,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(4.0),
              child: Image.asset(
                walletItem.pic,
                width: 20,
                height: 20,
              ),
            ),
            onPressed: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          Hero(
            tag: walletItem.id,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                walletItem.qrCode,
                width: 300,
                height: 300,
                color: Theme.of(context)
                    .colorScheme
                    .primary, //Colors.lightGreen.shade800,
                colorBlendMode: BlendMode.color,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share,
                  ),
                  label: const Text('Share'),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton.icon(
                    onPressed: () {
                      Clipboard.setData(
                        ClipboardData(text: walletItem.address),
                      ).then((value) {
                        ScaffoldMessenger.of(context).clearSnackBars();
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            backgroundColor: Colors.black,
                            content: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.check,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  'Address was copied.',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        );
                        Navigator.pop(context);
                      });
                    },
                    icon: const Icon(Icons.copy),
                    label: const Text('Copy Address')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
