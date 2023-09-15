import 'package:coin_app/models/dummy_wallet.dart';
import 'package:coin_app/widgets/wallet_widgets/wallet_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({super.key, required this.walletItem});
  final WalletItem walletItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(
          child: InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => WalletDialog(walletItem: walletItem),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topLeft,
                  colors: [Colors.black, Colors.grey],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade600,
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: const Offset(5, 5),
                  ),
                  const BoxShadow(
                      color: Colors.white,
                      offset: Offset(-5, -5),
                      blurRadius: 10,
                      spreadRadius: 1),
                ],
              ),
              margin: const EdgeInsets.only(
                  top: 10, bottom: 15, right: 10, left: 10),
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 250,
                width: 450,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 5),
                      width: 225,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // const SizedBox(
                          //   height: 10,
                          // ),
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
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) =>
                                    WalletDialog(walletItem: walletItem),
                              );
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            // width: 130,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.share,
                                    size: 18,
                                  ),
                                  label: const Text(
                                    'Share',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextButton.icon(
                                    onPressed: () {
                                      Clipboard.setData(
                                        ClipboardData(text: walletItem.address),
                                      ).then((value) {
                                        ScaffoldMessenger.of(context)
                                            .clearSnackBars();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            backgroundColor: Colors.black,
                                            content: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
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
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.copy,
                                      size: 18,
                                    ),
                                    label: const Text(
                                      'Copy Address',
                                      style: TextStyle(fontSize: 15),
                                    )),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Container(
                            width: 80,
                            height: 5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.topLeft,
                                colors: [
                                  Colors.grey,
                                  Colors.black,
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // const SizedBox(
                    //   width: 10,
                    // ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Hero(
                          tag: walletItem.id,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              walletItem.qrCode,
                              width: 100,
                              height: 100,
                              color: Theme.of(context)
                                  .colorScheme
                                  .primary, //Colors.lightGreen.shade800,
                              colorBlendMode: BlendMode.color,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
