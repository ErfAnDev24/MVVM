import 'package:dio/dio.dart';
import 'package:mvvm/Model/Coin.dart';

class WebApi {
  Future<List<Coin>> loadData() async {
    Response response = await Dio().get('https://api.coincap.io/v2/assets');

    var data = response.data['data'];

    List<Coin> coinList = data
        .map<Coin>((jsonObject) => Coin.buildFronJsonOvject(jsonObject))
        .toList();

    return coinList;
  }
}
