import 'package:coin_app/models/dummy_alerts.dart';
import 'package:flutter/material.dart';

class AlertGridCard extends StatelessWidget {
  const AlertGridCard({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    Icon _getUpDown(AlertItem alertItem) {
      if (alertItem.value > alertItem.coinItem.lastPrice ||
          alertItem.value > alertItem.coinItem.changePercent) {
        return const Icon(
          Icons.trending_up,
          size: 20,
          color: Colors.green,
        );
      } else {
        return const Icon(
          Icons.trending_down,
          size: 20,
          color: Colors.red,
        );
      }
    }

    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: alertList.length,
      itemBuilder: (context, index) {
        bool isComplete = alertList[index].isComplete;
        return Container(
          width: 240,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(83, 189, 189, 189),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(4, 4),
              ),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-2, -1),
                  blurRadius: 3,
                  spreadRadius: 1),
            ],
          ),
          margin: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 15,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _getUpDown(alertList[index]),
                    const Spacer(),
                    // const SizedBox(
                    //   width: 10,
                    // ),
                    Text(
                      isComplete ? 'Reached' : 'Not Reach',
                      style: TextStyle(
                          color: isComplete
                              ? Colors.green
                              : Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    const Spacer(),
                    const InkWell(
                      child: Icon(
                        Icons.close,
                        size: 20,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      alertList[index].coinItem.coinIcon,
                      size: 40,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      alertList[index].coinItem.name,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 14,
                ),
                Text(
                  alertList[index].isPrice
                      ? alertList[index].coinItem.lastPrice.toString()
                      : alertList[index].coinItem.changePercent.toString(),
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    alertList[index].isPrice
                        ? const Icon(
                            Icons.attach_money,
                            size: 20,
                          )
                        : const Icon(
                            Icons.percent,
                            size: 20,
                          ),
                    const Spacer(),
                    Text(
                      alertList[index].value.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: isComplete
                            ? Colors.green
                            : Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const Spacer(),
                    const InkWell(
                      child: Icon(
                        Icons.push_pin_outlined,
                        size: 20,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
