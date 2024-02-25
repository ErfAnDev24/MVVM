class Coin {
  String? name;
  String? priceUsd;
  String? rank;
  String? changePercent24Hr;

  Coin(this.name, this.priceUsd, this.rank, this.changePercent24Hr);

  factory Coin.buildFronJsonOvject(Map<String, dynamic> jsonObject) {
    return Coin(jsonObject['name'], jsonObject['priceUsd'], jsonObject['rank'],
        jsonObject['changePercent24Hr']);
  }
}
