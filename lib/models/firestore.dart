import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:last_penny/main.dart';
import 'package:last_penny/screens/currencyScreen.dart';

class FirestoreHelper {
  void getMarketDatas() {
    //FirebaseFirestore.instance.collection('market_datas').doc('4qOUvTYRJZeo0XxZedy6').get().then((key) {
    //  cryptocurrencies = key['cryptocurrencies'];
    //  dominanceBTC = key['dominance_btc'];
    //  dominanceETH = key['dominance_eth'];
    //  dominanceOther = key['dominance_other'];
    //  marketCap = key['market_cap'];
    //  marketPairs = key['market_pairs'];
    //  vol24h = key['vol_24h'];
    //});
    FirebaseFirestore.instance.collection('market_datas').doc('4qOUvTYRJZeo0XxZedy6').snapshots().listen((result) {
      result.data().forEach((key, value) {
        if (key == 'cryptocurrencies') {
          cryptocurrencies = value;
        }
        else if (key == 'dominance_btc') {
          dominanceBTC = value;
        }
        else if (key == 'dominance_eth') {
          dominanceETH = value;
        }
        else if (key == 'dominance_other') {
          dominanceOther = value;
        }
        else if (key == 'market_cap') {
          marketCap = value;
        }
        else if (key == 'market_pairs') {
          marketPairs = value;
        }
        else if (key == 'vol_24h') {
          vol24h = value;
        }
      });
    });
  }

  void getCurrencyDatas(String currencyCode) {
    FirebaseFirestore.instance.collection('currencies').doc(currencyCode).snapshots().listen((result) {
      if (result.data() != null) {
        result.data().forEach((key, value) {
          if (key == 'currency') {
            currency = value;
          }
          else if (key == 'fully_diluted_market_cap_growth_rate') {
            fully_diluted_market_cap_growth_rate = value;
          }
          else if (key == 'fully_diluted_market_cap_growth_way') {
            fully_diluted_market_cap_growth_way = value;
          }
          else if (key == 'fully_diluted_market_cap_usd') {
            fully_diluted_market_cap_usd = value;
          }
          else if (key == 'market_cap_growth_rate') {
            market_cap_growth_rate = value;
          }
          else if (key == 'market_cap_growth_way') {
            market_cap_growth_way = value;
          }
          else if (key == 'market_cap_usd') {
            market_cap_usd = value;
          }
          else if (key == 'max_supply') {
            max_supply = value;
          }
          else if (key == 'price_usd') {
            price_usd = value;
          }
          else if (key == 'ranking') {
            ranking = value;
          }
          else if (key == 'symbol') {
            symbol = value;
          }
          else if (key == 'total_supply') {
            total_supply = value;
          }
          else if (key == 'volume_growth_rate') {
            volume_growth_rate = value;
          }
          else if (key == 'volume_growth_way') {
            volume_growth_way = value;
          }
          else if (key == 'volume_usd') {
            volume_usd = value;
          }
        });
      }
    });
  }
}