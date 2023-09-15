import 'package:coin_app/models/dummy_crypto.dart';
import 'package:coin_app/widgets/alerts_widgets/add_alert_dialog.dart';
import 'package:coin_app/widgets/alerts_widgets/alerts_grid_card.dart';
import 'package:coin_app/widgets/alerts_widgets/filter_alert_bar.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                floating: true,
                pinned: false,
                snap: true,
                backgroundColor: Colors.white,
                title: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Alerts',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            useRootNavigator: true,
                            useSafeArea: true,
                            backgroundColor: Colors.white,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(60),
                                topLeft: Radius.circular(60),
                              ),
                            ),
                            showDragHandle: true,
                            context: context,
                            builder: (context) =>
                                AddAlert(coinItem: listCoin[0]),
                          );
                        },
                        icon: const Icon(
                          Icons.add,
                          size: 28,
                        )),
                  )
                ],
              ),
            ];
          },
          body: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                  child: MediaQuery.removePadding(
                      removeTop: true,
                      context: context,
                      child: const AlertGridCard())),
              const FilterAlertBar()
            ],
          ),
        ));
  }
}
