import 'package:flutter/material.dart';

import 'list_coin_top.dart';

class TopTab extends StatelessWidget {
  const TopTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          margin: const EdgeInsets.only(left: 5, right: 5),
          height: 10,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(80)),
              gradient: LinearGradient(
                  colors: [Colors.pinkAccent, Colors.greenAccent],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft)),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(right: 13, left: 13, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5 - 20,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gainers',
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                      TopList(isGainers: true),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5 - 20,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Losers',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                        TopList(isGainers: false),
                      ],
                    ))
              ],
            ),
          ),
        )
      ],
    );
  }
}

