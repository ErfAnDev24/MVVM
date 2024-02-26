import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mvvm/models/Coin.dart';
import 'package:mvvm/services/NetworkApi.dart';
import 'package:mvvm/services/NetworkApiImpl.dart';

class CoinListViewModel extends ChangeNotifier {
  List<Coin> coinList = [];
  NetworkApi api = GetIt.I.get<NetworkApi>();

  void loadData() async {
    coinList = await api.getAllCoins();
    notifyListeners();
  }
}
