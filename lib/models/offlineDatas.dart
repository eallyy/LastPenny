// Top 10 Coins

class Cryptocurrency {
  String ranking;
  String currency;
  String currency_code;
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

  Cryptocurrency(
    this.ranking,
    this.currency,
    this.currency_code,
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
    );
}

var top10CoinsData = [
  {
    "ranking": "1",
    "currency_code": "bitcoin",
    "currency": "Bitcoin",
    "symbol": "BTC",
    "price_usd": "56322.73",
    "market_cap_usd": "1,051,892,416,862",
    "market_cap_growth_way": "down",
    "market_cap_growth_rate": "3.47",
    "fully_diluted_market_cap_usd": "1,182,777,315,495",
    "fully_diluted_market_cap_growth_way": "down",
    "fully_diluted_market_cap_growth_rate": "3.47",
    "volume_usd": "73,140,940,661",
    "volume_growth_way": "up",
    "volume_growth_rate": "8.66",
    "max_supply": "21,000,000",
    "total_supply": "18,676,162"
  },
  {
    "ranking": "2",
    "currency_code": "ethereum",
    "currency": "Ethereum",
    "symbol": "ETH",
    "price_usd": "1977.13",
    "market_cap_usd": "228,107,153,737",
    "market_cap_growth_way": "down",
    "market_cap_growth_rate": "6.41",
    "fully_diluted_market_cap_usd": "228,107,153,737",
    "fully_diluted_market_cap_growth_way": "down",
    "fully_diluted_market_cap_growth_rate": "6.41",
    "volume_usd": "32,883,839,347",
    "volume_growth_way": "up",
    "volume_growth_rate": "9.24",
    "max_supply": "-",
    "total_supply": "115,372,834"
  },
  {
    "ranking": "3",
    "currency_code": "binance-coin",
    "currency": "Binance Coin",
    "symbol": "BNB",
    "price_usd": "378.15",
    "market_cap_usd": "58,437,194,558",
    "market_cap_growth_way": "down",
    "market_cap_growth_rate": "3.89",
    "fully_diluted_market_cap_usd": "64,487,658,949",
    "fully_diluted_market_cap_growth_way": "down",
    "fully_diluted_market_cap_growth_rate": "3.89",
    "volume_usd": "6,270,224,426",
    "volume_growth_way": "down",
    "volume_growth_rate": "30.50",
    "max_supply": "170,532,785",
    "total_supply": "170,532,785"
  },
  {
    "ranking": "4",
    "currency_code": "tether",
    "currency": "Tether",
    "symbol": "USDT",
    "price_usd": "1.00",
    "market_cap_usd": "43,094,031,328",
    "market_cap_growth_way": "up",
    "market_cap_growth_rate": "0.06",
    "fully_diluted_market_cap_usd": "44,885,801,264",
    "fully_diluted_market_cap_growth_way": "down",
    "fully_diluted_market_cap_growth_rate": "0.06",
    "volume_usd": "159,937,619,580",
    "volume_growth_way": "up",
    "volume_growth_rate": "6.85",
    "max_supply": "-",
    "total_supply": "44,846,290,994"
  },
  {
    "ranking": "5",
    "currency_code": "xrp",
    "currency": "XRP",
    "symbol": "XRP",
    "price_usd": "0.9285",
    "market_cap_usd": "42,159,029,072",
    "market_cap_growth_way": "down",
    "market_cap_growth_rate": "6.80",
    "fully_diluted_market_cap_usd": "92,853,058,053",
    "fully_diluted_market_cap_growth_way": "down",
    "fully_diluted_market_cap_growth_rate": "6.80",
    "volume_usd": "25373545702",
    "volume_growth_way": "down",
    "volume_growth_rate": "29.75",
    "max_supply": "100,000,000,000",
    "total_supply": "99,990,831,162"
  },
  {
    "ranking": "6",
    "currency_code": "cardano",
    "currency": "Cardano",
    "symbol": "ADA",
    "price_usd": "1.19",
    "market_cap_usd": "37,895,648,526",
    "market_cap_growth_way": "down",
    "market_cap_growth_rate": "8.88",
    "fully_diluted_market_cap_usd": "53,376,977,171",
    "fully_diluted_market_cap_growth_way": "down",
    "fully_diluted_market_cap_growth_rate": "8.88",
    "volume_usd": "5,037,100,601",
    "volume_growth_way": "down",
    "volume_growth_rate": "16.79",
    "max_supply": "45,000,000,000",
    "total_supply": "45,000,000,000"
  },
  {
    "ranking": "7",
    "currency_code": "polkadot",
    "currency": "Polkadot",
    "symbol": "DOT",
    "price_usd": "38.67",
    "market_cap_usd": "35,820,347,498",
    "market_cap_growth_way": "down",
    "market_cap_growth_rate": "10.77",
    "fully_diluted_market_cap_usd": "41,079,819,258",
    "fully_diluted_market_cap_growth_way": "down",
    "fully_diluted_market_cap_growth_rate": "10.77",
    "volume_usd": "3,657,671,245",
    "volume_growth_way": "up",
    "volume_growth_rate": "12.94",
    "max_supply": "-",
    "total_supply": "1,062,434,832"
  },
  {
    "ranking": "8",
    "currency_code": "uniswap",
    "currency": "Uniswap",
    "symbol": "UNI",
    "price_usd": "28.14",
    "market_cap_usd": "14,725,184,765",
    "market_cap_growth_way": "down",
    "market_cap_growth_rate": "10.11",
    "fully_diluted_market_cap_usd": ".80",
    "fully_diluted_market_cap_growth_way": "down",
    "fully_diluted_market_cap_growth_rate": "10.11",
    "volume_usd": "28,140,633,669",
    "volume_growth_way": "down",
    "volume_growth_rate": "7.46",
    "max_supply": "1,000,000,000",
    "total_supply": "1,000,000,000"
  },
  {
    "ranking": "9",
    "currency_code": "litecoin",
    "currency": "Litecoin",
    "symbol": "LTC",
    "price_usd": "219.07",
    "market_cap_usd": "14,623,168,866",
    "market_cap_growth_way": "down",
    "market_cap_growth_rate": "10.41",
    "fully_diluted_market_cap_usd": "18,401,524,405",
    "fully_diluted_market_cap_growth_way": "down",
    "fully_diluted_market_cap_growth_rate": "10.41",
    "volume_usd": "8,873,221,356",
    "volume_growth_way": "down",
    "volume_growth_rate": "3.26",
    "max_supply": "84,000,000",
    "total_supply": "66,752,415"
  },
  {
    "ranking": "10",
    "currency_code": "chainlink",
    "currency": "Chainlink",
    "symbol": "LINK",
    "price_usd": "30.91",
    "market_cap_usd": "12,903,696,890",
    "market_cap_growth_way": "down",
    "market_cap_growth_rate": "8.31",
    "fully_diluted_market_cap_usd": "30,906,350,983",
    "fully_diluted_market_cap_growth_way": "down",
    "fully_diluted_market_cap_growth_rate": "8.31",
    "volume_usd": "2,602,714,546",
    "volume_growth_way": "up",
    "volume_growth_rate": "3.36",
    "max_supply": "1,000,000,000",
    "total_supply": "1,000,000,000"
  }
];

List<Cryptocurrency> top10Coins = top10CoinsData
    .map((coin) => Cryptocurrency(
    coin['ranking'],
    coin['currency'],
    coin['currency_code'],
    coin['symbol'],
    coin['price_usd'],
    coin['market_cap_usd'],
    coin['market_cap_growth_way'],
    coin['market_cap_growth_rate'],
    coin['fully_diluted_market_cap_usd'],
    coin['fully_diluted_market_cap_growth_way'],
    coin['fully_diluted_market_cap_growth_rate'],
    coin['volume_usd'],
    coin['volume_growth_way'],
    coin['volume_growth_rate'],
    coin['max_supply'],
    coin['total_supply'])).toList();

// Market Datas
class MarketDatas {
  final String market_cap;
  final String vol_24h;
  final String cryptocurrencies;
  final String market_pairs;
  final double dominance_btc;
  final double dominance_eth;
  final double dominance_other;

  MarketDatas(
    this.market_cap,
    this.vol_24h,
    this.cryptocurrencies,
    this.market_pairs,
    this.dominance_btc,
    this.dominance_eth,
    this.dominance_other
  );
}

MarketDatas marketDatas = MarketDatas(
    '1,903,395,167,849', // Market Cap
    '189,967,046,142', // 24h Volume
    '9,168', // Crpytocurrencies
    '38,065', // Market Pairs
    52.2, // Dominance BTC
    12.2, // Dominance ETH
    35.6 // Dominance Other
);

// Single Coin Datas
Cryptocurrency getCryptocurrency(String symbol) {
  Cryptocurrency _temp;
  top10CoinsData.forEach((coin) {
    if (coin['symbol'] == symbol) {
      _temp = Cryptocurrency(
        coin['ranking'],
        coin['currency'],
        coin['currency_code'],
        coin['symbol'],
        coin['price_usd'],
        coin['market_cap_usd'],
        coin['market_cap_growth_way'],
        coin['market_cap_growth_rate'],
        coin['fully_diluted_market_cap_usd'],
        coin['fully_diluted_market_cap_growth_way'],
        coin['fully_diluted_market_cap_growth_rate'],
        coin['volume_usd'],
        coin['volume_growth_way'],
        coin['volume_growth_rate'],
        coin['max_supply'],
        coin['total_supply']);
    }
  });
  return _temp;
}