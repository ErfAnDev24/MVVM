import 'package:dio/dio.dart';
import 'package:mvvm/models/Coin.dart';
import 'package:mvvm/services/NetworkApi.dart';

class NetworkApiImpl implements NetworkApi {
  Future<List<Coin>> getAllCoins() async {
    Response response = await Dio().get('https://api.coincap.io/v2/assets/');
    var myCoins = response.data['data'];
    List<Coin> coinList = myCoins
        .map<Coin>((jsonObject) => Coin.buildThroghJson(jsonObject))
        .toList();
    return coinList;
  }
}
