import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

class CoinItem {
  CoinItem(
      {required this.coinIcon,
      required this.name,
      required this.fullname,
      required this.lastPrice,
      required this.highPrice,
      required this.lowPrice,
      required this.changePercent,
      required this.upSignal})
      : id = uuid.v4();

  final String id;
  final IconData coinIcon;
  final String name;
  final String fullname;
  final double lastPrice;
  final double highPrice;
  final double lowPrice;
  final double changePercent;
  final bool upSignal;
}

List<CoinItem> listCoin = [
  CoinItem(
      coinIcon: Icons.add_alarm,
      name: 'BTC',
      fullname: 'Bitcoin',
      lastPrice: 29000,
      highPrice: 30000,
      lowPrice: 28900,
      changePercent: 12.3,
      upSignal: true),
  CoinItem(
      coinIcon: Icons.add_alarm,
      name: 'Doge',
      fullname: 'Doge',
      lastPrice: 0.008,
      highPrice: 0.0085,
      lowPrice: 0.007987,
      changePercent: 5.42,
      upSignal: true),
  CoinItem(
      coinIcon: Icons.add_alarm,
      name: 'Pepe',
      fullname: 'Pepe',
      lastPrice: 0.0004,
      highPrice: 0.00049,
      lowPrice: 0.00032,
      changePercent: 12.2,
      upSignal: false),
  CoinItem(
      coinIcon: Icons.add_alarm,
      name: 'ETH',
      fullname: 'Entherium',
      lastPrice: 1800,
      highPrice: 1923,
      lowPrice: 1742,
      changePercent: 8.2,
      upSignal: true),
  CoinItem(
      coinIcon: Icons.add_alarm,
      name: 'BNB',
      fullname: 'Binance',
      lastPrice: 245,
      highPrice: 270,
      lowPrice: 220,
      changePercent: 6.5,
      upSignal: false),
  CoinItem(
      coinIcon: Icons.add_alarm,
      name: 'BTC',
      fullname: 'Bitcoin',
      lastPrice: 29000,
      highPrice: 30000,
      lowPrice: 28900,
      changePercent: 12.3,
      upSignal: true),
  CoinItem(
      coinIcon: Icons.add_alarm,
      name: 'Doge',
      fullname: 'Doge',
      lastPrice: 0.008,
      highPrice: 0.0085,
      lowPrice: 0.007987,
      changePercent: 5.42,
      upSignal: true),
  CoinItem(
      coinIcon: Icons.add_alarm,
      name: 'Pepe',
      fullname: 'Pepe',
      lastPrice: 0.0004,
      highPrice: 0.00049,
      lowPrice: 0.00032,
      changePercent: 12.2,
      upSignal: false),
  CoinItem(
      coinIcon: Icons.add_alarm,
      name: 'ETH',
      fullname: 'Entherium',
      lastPrice: 1800,
      highPrice: 1923,
      lowPrice: 1742,
      changePercent: 8.2,
      upSignal: true),
  CoinItem(
      coinIcon: Icons.add_alarm,
      name: 'BNB',
      fullname: 'Binance',
      lastPrice: 245,
      highPrice: 270,
      lowPrice: 220,
      changePercent: 6.5,
      upSignal: false),
  CoinItem(
      coinIcon: Icons.add_alarm,
      name: 'BTC',
      fullname: 'Bitcoin',
      lastPrice: 29000,
      highPrice: 30000,
      lowPrice: 28900,
      changePercent: 12.3,
      upSignal: true),
  CoinItem(
      coinIcon: Icons.add_alarm,
      name: 'Doge',
      fullname: 'Doge',
      lastPrice: 0.008,
      highPrice: 0.0085,
      lowPrice: 0.007987,
      changePercent: 5.42,
      upSignal: true),
  CoinItem(
      coinIcon: Icons.add_alarm,
      name: 'Pepe',
      fullname: 'Pepe',
      lastPrice: 0.0004,
      highPrice: 0.00049,
      lowPrice: 0.00032,
      changePercent: 12.2,
      upSignal: false),
  CoinItem(
      coinIcon: Icons.add_alarm,
      name: 'ETH',
      fullname: 'Entherium',
      lastPrice: 1800,
      highPrice: 1923,
      lowPrice: 1742,
      changePercent: 8.2,
      upSignal: true),
  CoinItem(
      coinIcon: Icons.add_alarm,
      name: 'BNB',
      fullname: 'Binance',
      lastPrice: 245,
      highPrice: 270,
      lowPrice: 220,
      changePercent: 6.5,
      upSignal: false),
  CoinItem(
      coinIcon: Icons.add_alarm,
      name: 'BTC',
      fullname: 'Bitcoin',
      lastPrice: 29000,
      highPrice: 30000,
      lowPrice: 28900,
      changePercent: 12.3,
      upSignal: true),
  CoinItem(
      coinIcon: Icons.add_alarm,
      name: 'Doge',
      fullname: 'Doge',
      lastPrice: 0.008,
      highPrice: 0.0085,
      lowPrice: 0.007987,
      changePercent: 5.42,
      upSignal: true),
  CoinItem(
      coinIcon: Icons.add_alarm,
      name: 'Pepe',
      fullname: 'Pepe',
      lastPrice: 0.0004,
      highPrice: 0.00049,
      lowPrice: 0.00032,
      changePercent: 12.2,
      upSignal: false),
  CoinItem(
      coinIcon: Icons.add_alarm,
      name: 'ETH',
      fullname: 'Entherium',
      lastPrice: 1800,
      highPrice: 1923,
      lowPrice: 1742,
      changePercent: 8.2,
      upSignal: true),
  CoinItem(
      coinIcon: Icons.add_alarm,
      name: 'BNB',
      fullname: 'Binance',
      lastPrice: 245,
      highPrice: 270,
      lowPrice: 220,
      changePercent: 6.5,
      upSignal: false)
];
