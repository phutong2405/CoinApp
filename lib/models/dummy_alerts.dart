import 'package:coin_app/models/dummy_crypto.dart';

import 'package:uuid/uuid.dart';

const uuid = Uuid();

class AlertItem {
  AlertItem(
      {required this.coinItem,
      required this.value,
      required this.isPrice,
      this.isComplete = false})
      : id = uuid.v4();

  final String id;
  final CoinItem coinItem;
  final double value;
  final bool isPrice;
  final bool isComplete;
}

List<AlertItem> alertList = [
  AlertItem(coinItem: listCoin[0], value: 29500, isPrice: true),
  AlertItem(coinItem: listCoin[0], value: 12, isPrice: false),
  AlertItem(coinItem: listCoin[1], value: 0.008, isPrice: true),
  AlertItem(coinItem: listCoin[3], value: 13, isPrice: false, isComplete: true),
  AlertItem(coinItem: listCoin[0], value: 13, isPrice: false),
];
