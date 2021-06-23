import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:last_penny/constants/last_penny_theme.dart';
import 'package:last_penny/constants/last_penny_static.dart';
import 'package:last_penny/main.dart';
import 'package:last_penny/models/firestore.dart';
import 'package:last_penny/models/offlineDatas.dart';

class Top100Screen extends StatefulWidget {
  @override
  _Top100ScreenState createState() => _Top100ScreenState();
}

class _Top100ScreenState extends State<Top100Screen> {
  FirestoreHelper fshelper = FirestoreHelper();
  @override
  Widget build(BuildContext context) {
    return LastPennyDrawer(
      child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.5, 0.9],
                    colors: [darkMode ? pennyGRD2_1 : pennyGRD1_1, darkMode ? pennyGRD2_2 : pennyGRD1_2]
                )
            ),
            child: ListView(
              physics: ClampingScrollPhysics(),
              children: <Widget>[
                //AppBar
                LastPennyAppBar(),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 25, bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left:16),
                        child: Row(
                          children: <Widget>[
                            Text('Top 100 Coins', style: GoogleFonts.inter(
                                fontSize: 28,
                                fontWeight: FontWeight.w900,
                                color: darkMode ? pennyWhite3 : pennyBlack2
                            ),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: top10Coins.length,
                  padding: EdgeInsets.only(left: 16, right: 16),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: (){
                          // Fetching cryptocurrency datas
                          fshelper.getCurrencyDatas(top10Coins[index].currency_code);
                          Navigator.of(context).pushNamed('/currency', arguments: top10Coins[index].currency_code);
                        },
                        child: Container(
                            height: 100,
                            margin: EdgeInsets.only(bottom: 16),
                            padding: EdgeInsets.only(left: 24, top: 12, bottom: 12, right: 24),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    stops: [0.1, 0.9],
                                    colors: [darkMode ? pennyGRD4_2 : pennyWhite2, darkMode ? pennyGRD4_1 : pennyWhite3]
                                ),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                      color: darkMode ? pennyBlack2 : pennyBlack10,
                                      blurRadius: 10,
                                      spreadRadius: 0.1,
                                      offset: Offset(4, 4)
                                  )
                                ]
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                        width: 210,
                                        padding: EdgeInsets.only(bottom: 7),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                                padding: EdgeInsets.only(left: 4, right: 4),
                                                margin: EdgeInsets.only(right: 4),
                                                decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                        begin: Alignment.topLeft,
                                                        end: Alignment.bottomRight,
                                                        stops: [0.1, 0.9],
                                                        colors: [darkMode ? pennyBlack6 : pennyWhite4, darkMode ? pennyBlack5 : pennyWhite5]
                                                    ),
                                                    borderRadius: BorderRadius.circular(4)
                                                ),
                                                child: Text('#'+top10Coins[index].ranking,
                                                  overflow: TextOverflow.fade,
                                                  maxLines: 1,
                                                  softWrap: false,
                                                  style: GoogleFonts.inter(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w900,
                                                      color: darkMode ? pennyWhite3 : pennyBlack2
                                                  ),)
                                            ),
                                            Text(top10Coins[index].currency,
                                              overflow: TextOverflow.fade,
                                              maxLines: 1,
                                              softWrap: false,
                                              style: GoogleFonts.inter(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700,
                                                  color: darkMode ? pennyWhite3 : pennyBlack2
                                              ),)
                                          ],
                                        )
                                    ),
                                    Container(
                                      width: 210,
                                      child: Text('\$'+top10Coins[index].price_usd,
                                        overflow: TextOverflow.fade,
                                        maxLines: 1,
                                        softWrap: false,
                                        style: GoogleFonts.inter(
                                            fontSize: 26,
                                            fontWeight: FontWeight.w900,
                                            color: top10Coins[index].volume_growth_way == 'up' ? pennyGreen : pennyRed
                                        ),),
                                    )
                                  ],
                                ),
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                              padding: EdgeInsets.all(4),
                                              margin: EdgeInsets.only(bottom: 12),
                                              decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.1, 0.9],
                                                      colors: [darkMode ? pennyBlack6 : pennyWhite4, darkMode ? pennyBlack5 : pennyWhite5]
                                                  ),
                                                  borderRadius: BorderRadius.circular(4)
                                              ),
                                              child: Text(top10Coins[index].symbol, style: GoogleFonts.inter(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                  color: darkMode ? pennyWhite5 : pennyBlack2
                                              ),)
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Container(
                                                  padding: EdgeInsets.only(bottom: 3),
                                                  child: SvgPicture.asset(top10Coins[index].volume_growth_way == 'up' ? 'lib/assets/svg/arrow_up.svg' : 'lib/assets/svg/arrow_down.svg', height: 17, width: 17, color: top10Coins[index].volume_growth_way == 'up' ? pennyGreen : pennyRed)
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(bottom: 3, left: 5),
                                                child: Text(top10Coins[index].volume_growth_rate, style: GoogleFonts.inter(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w700,
                                                    color: top10Coins[index].volume_growth_way == 'up' ? pennyGreen : pennyRed
                                                ),),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                        )
                    );
                  },
                )
              ],
            ),
          )
      ),
    );
  }
}
