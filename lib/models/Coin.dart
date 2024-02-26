class Coin {
  String name;

  Coin(this.name);

  factory Coin.buildThroghJson(Map<String, dynamic> jsonObject) {
    return Coin(jsonObject['name']);
  }
}
