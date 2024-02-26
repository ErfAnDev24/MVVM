import 'package:mvvm/models/Coin.dart';

abstract class NetworkApi {
  Future<List<Coin>> getAllCoins();
}
