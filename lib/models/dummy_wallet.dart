import 'package:uuid/uuid.dart';

const uuid = Uuid();

class WalletItem {
  WalletItem(
      {required this.name,
      required this.address,
      required this.pic,
      required this.qrCode})
      : id = uuid.v4();
  final String id;
  final String name;
  final String address;
  final String qrCode;
  final String pic;
}

List<WalletItem> walletLists = [
  WalletItem(
      name: 'Binance',
      address: '6dcxc76dgdfhjkdhu5bk454fdfxzxc76dsxcxcx897768xc',
      pic: 'assets/images/binance.png',
      qrCode: 'assets/images/qrcode.png'),
  WalletItem(
      name: 'Momo',
      address: '6dcxc76dgdfhjkdhu5bk454fdfxzxc76dsxcxcx897768xc',
      pic: 'assets/images/momo.png',
      qrCode: 'assets/images/qrcode.png'),
  WalletItem(
      name: 'Binance',
      address: '6dcxc76dgdfhjkdhu5bk454fdfxzxc76dsxcxcx897768xc',
      pic: 'assets/images/binance.png',
      qrCode: 'assets/images/qrcode.png'),
  WalletItem(
      name: 'Momo',
      address: '6dcxc76dgdfhjkdhu5bk454fdfxzxc76dsxcxcx897768xc',
      pic: 'assets/images/momo.png',
      qrCode: 'assets/images/qrcode.png'),
];
