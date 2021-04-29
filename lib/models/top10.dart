import 'dart:convert';
import 'package:http/http.dart' as http;

List<Top10Coins> top10CoinsFromJson(String str) => List<Top10Coins>.from(json.decode(str).map((coin) => Top10Coins.fromJson(coin)));

String top10CoinsToJson(List<Top10Coins> data) => json.encode(List<dynamic>.from(data.map((coin) => coin.toJson())));

class Top10Coins {
  String currency;
  String symbol;
  String price_usd;
  String market_cap_usd;
  String market_cap_growth_way;
  String market_cap_growth_rate;
  String fully_diluted_market_cap_usd;
  String fully_diluted_market_cap_growth_way;
  String fully_diluted_market_cap_growth_rate;
  String volume_usd;
  String volume_growth_way;
  String volume_growth_rate;
  String max_supply;
  String total_supply;

  Top10Coins({
    this.currency,
    this.symbol,
    this.price_usd,
    this.market_cap_usd,
    this.market_cap_growth_way,
    this.market_cap_growth_rate,
    this.fully_diluted_market_cap_usd,
    this.fully_diluted_market_cap_growth_way,
    this.fully_diluted_market_cap_growth_rate,
    this.volume_usd,
    this.volume_growth_way,
    this.volume_growth_rate,
    this.max_supply,
    this.total_supply,
  });

  factory Top10Coins.fromJson(Map<String, dynamic> json) => Top10Coins(
    currency: json["currency"],
    symbol: json["symbol"],
    price_usd: json["price_usd"],
    market_cap_usd: json["market_cap_usd"],
    market_cap_growth_way: json["market_cap_growth_way"],
    market_cap_growth_rate: json["market_cap_growth_rate"],
    fully_diluted_market_cap_usd: json["fully_diluted_market_cap_usd"],
    fully_diluted_market_cap_growth_way: json["fully_diluted_market_cap_growth_way"],
    fully_diluted_market_cap_growth_rate: json["fully_diluted_market_cap_growth_rate"],
    volume_usd: json["volume_usd"],
    volume_growth_way: json["volume_growth_way"],
    volume_growth_rate: json["volume_growth_rate"],
    max_supply: json["max_supply"],
    total_supply: json["total_supply"],
  );

  Map<String, dynamic> toJson() => {
    "currency": currency,
    "symbol": symbol,
    "price_usd": price_usd,
    "market_cap_usd": market_cap_usd,
    "market_cap_growth_way": market_cap_growth_way,
    "market_cap_growth_rate": market_cap_growth_rate,
    "fully_diluted_market_cap_usd": fully_diluted_market_cap_usd,
    "fully_diluted_market_cap_growth_way": fully_diluted_market_cap_growth_way,
    "fully_diluted_market_cap_growth_rate": fully_diluted_market_cap_growth_rate,
    "volume_usd": volume_usd,
    "volume_growth_way": volume_growth_way,
    "volume_growth_rate": volume_growth_rate,
    "max_supply": max_supply,
    "total_supply": total_supply,
  };
}

class Top10CoinsService {
  static const String API = '192.168.0.16';

  static Future<List<Top10Coins>> getTop10Coins() async {
    try {
      final response = await http.get(Uri.http(API, '?top10'));
      if (response.statusCode == 200) {
        final List<Top10Coins> top10Coins = top10CoinsFromJson(response.body);
        return top10Coins;
      }
    }
    catch(error) {
      return List<Top10Coins>();
    }
  }
}