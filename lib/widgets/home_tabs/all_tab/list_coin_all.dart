import 'package:coin_app/bloc/crypto_bloc.dart';
import 'package:coin_app/bloc/crypto_event.dart';
import 'package:coin_app/bloc/crypto_state.dart';
import 'package:coin_app/models/dummy_crypto.dart';
import 'package:coin_app/widgets/alerts_widgets/add_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:tiny_charts/tiny_charts.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ListCoin extends StatefulWidget {
  const ListCoin({super.key});

  @override
  State<ListCoin> createState() => _ListCoinState();
}

class _ListCoinState extends State<ListCoin> {
  bool _inFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: BlocBuilder<CryptoBloc, CryptoState>(
        builder: (context, state) {
          
          switch (state.status) {
            case Status.loaded:
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<CryptoBloc>().add(RefreshCoins());
                },
                child: ListView.builder(
                    itemCount: state.coins.length,
                    itemBuilder: (context, index) {
                    final coin = state.coins[index];
                    bool last = state.coins.length == (index + 1);
                    return Slidable(
                      key: Key(listCoin[index].id),
                      startActionPane: ActionPane(
                          motion: const DrawerMotion(),
                          // dismissible: DismissiblePane(
                          //   onDismissed: () {},
                          // ),
                          children: [
                SlidableAction(
                  onPressed: (context) => showModalBottomSheet(
                    context: context,
                    showDragHandle: true,
                    builder: (context) => AddAlert(coinItem: listCoin[index]),
                  ),
                  backgroundColor: Colors.green.shade400,
                  foregroundColor: Colors.white,
                  icon: Icons.notification_add_outlined,
                  // label: 'Add Alert',
                ),
                SlidableAction(
                  onPressed: (context) {},
                  backgroundColor: Colors.red.shade400,
                  foregroundColor: Colors.white,
                  icon: Icons.favorite,
                  // label: 'Favorite',
                )
                          ]),
                      child: Column(
                        children: [
                          Padding(
                padding: !last
                    ? const EdgeInsets.only(bottom: 10, top: 10)
                    : const EdgeInsets.only(bottom: 80, top: 10),
                child: ListTile(
                  onTap: () {},
                  leading: IconButton(
                    icon: const Icon(
                      Icons.settings,
                      size: 28,
                    ),
                    onPressed: () {
                      setState(() {
                        if (!_inFavorite) {
                          _inFavorite = true;
                        } else {
                          _inFavorite = false;
                        }
                      });
                    },
                  ),
                  title: Container(
                    width: 120,
                    padding: const EdgeInsets.only(left: 40),
                    child: Text(
                      coin.name,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  subtitle: Container(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text(
                      '% ${listCoin[index].changePercent}',
                      style: TextStyle(
                        fontSize: 14,
                        color: listCoin[index].upSignal == true
                            ? Colors.green.shade400
                            : Colors.red.shade400,
                      ),
                    ),
                  ),
                  trailing: SizedBox(
                    // decoration: BoxDecoration(border: Border.all()),
                    width: 150,
                    child: Row(
                      children: [
                        // SizedBox(
                        //   width: 50,
                        //   child: TinyLineChart(
                        //     width: 100,
                        //     height: 28,
                        //     dataPoints: const [
                        //       Offset(0, 2),
                        //       Offset(1, 11),
                        //       Offset(2, 17),
                        //       Offset(2.5, 0),
                        //       Offset(3, 10),
                        //       Offset(4, 0),
                        //     ],
                        //     options: const TinyLineChartOptions(
                        //       color: Colors.black,
                        //       lineWidth: 1.5,
                        //       yMinLimit: -2,
                        //       yMaxLimit: 27,
                        //     ),
                        //   ),
                        // ),
                        const Spacer(),
                        Container(
                          height: 60,
                          width: 120,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: listCoin[index].upSignal == true
                                  ? Colors.green.shade400
                                  : Colors.red.shade400,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            '\$ ${coin.price.toStringAsFixed(2)}',
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                          ),
                          Container(height: 1, width: MediaQuery.of(context).size.width - 60, color: Colors.grey.withOpacity(0.1), padding: const EdgeInsets.symmetric(horizontal: 10),),
                        ],
                      ),
                    );
                    },
                  ),
              );
            case Status.error:
              return Center(
                child: Text(
                  state.onError.message,
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 18.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              );
            default:
              return Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(
                    Theme.of(context).colorScheme.secondary,
                  ),
                ),
              );
          }
        },
      ),
    );
  }
}


// decoration: BoxDecoration(
//                 border: Border.all(
//                   width: 2,
//                   color: _inFavorite == true
//                       ? Colors.yellow.shade700
//                       : Colors.grey.shade700,
//                 ),
//                 borderRadius: BorderRadius.circular(100),
//               ),