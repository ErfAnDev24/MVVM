import 'package:flutter/material.dart';
import 'package:mvvm/Model/Coin.dart';
import 'package:mvvm/Services/WebApi.dart';

class CoinViewModel extends ChangeNotifier {
  WebApi web = WebApi();
  List<Coin>? coinList = [];

  void loadData() async {
    coinList = await web.loadData();
    notifyListeners();
  }
}
