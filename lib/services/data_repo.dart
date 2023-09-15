import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;

import '../models/crypto_models.dart';

class CryptoRepository {
  static const String _baseUrl = 'https://min-api.cryptocompare.com/';

  final http.Client _httpClient;

  CryptoRepository({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  Future<List<CryptoCurrency>> getCurrencies() async {
    const requestUrl =
        '${_baseUrl}data/top/totalvolfull?limit=50&tsym=USD&page=0';
    try {
      final response = await _httpClient.get(Uri.parse(requestUrl));
      if (response.statusCode == 200) {
        Map<String, dynamic> data = json.decode(response.body);
        final coinList = List.from(data['Data']);
        print(coinList);

        return coinList.map((e) => CryptoCurrency.fromMap(e)).toList();
      }
      return [];
    } catch (err) {
      throw DataError(message: err.toString());
    }
  }
}

class DataError extends Equatable {
  final String message;

  const DataError({this.message = ''});

  @override
  List<Object?> get props => [message];
}
