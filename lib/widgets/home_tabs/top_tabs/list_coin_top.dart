import 'package:coin_app/models/dummy_crypto.dart';
import 'package:flutter/material.dart';

class TopList extends StatelessWidget {
  const TopList({super.key, required this.isGainers});
  final bool isGainers;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: listCoin.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Padding(
                  padding: isGainers
                      ? const EdgeInsets.all(0)
                      : const EdgeInsets.only(left: 30),
                  child: Text(
                    listCoin[index].fullname,
                    style: const TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
                const Spacer(),
                Container(
                  margin: isGainers
                      ? const EdgeInsets.only(right: 30)
                      : const EdgeInsets.all(0),
                  height: 40,
                  width: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: isGainers == true ? Colors.green : Colors.red,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    '% ${listCoin[index].changePercent.toString()}',
                    style: const TextStyle(
                        fontSize: 11.5,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
