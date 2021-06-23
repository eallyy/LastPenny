import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:last_penny/constants/last_penny_static.dart';
import 'package:last_penny/constants/last_penny_theme.dart';
import 'package:last_penny/main.dart';
import 'package:last_penny/models/firestore.dart';

String ranking;
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

class CurrencyScreen extends StatefulWidget {
  final String currency_code;

  CurrencyScreen({this.currency_code});

  @override
  _CurrencyScreenState createState() => _CurrencyScreenState();
}

class _CurrencyScreenState extends State<CurrencyScreen> {
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
                  LastPennyAppBar(),
                  Padding(
                    padding: EdgeInsets.only(top: 25, left: 32, right: 32),
                    child: Text('Ranking: ' + ranking, style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: darkMode ? pennyWhite3 : pennyBlack2
                    )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16, right: 16, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left:16),
                          child: Row(
                            children: <Widget>[
                              Text(currency, style: GoogleFonts.inter(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w900,
                                  color: darkMode ? pennyWhite3 : pennyBlack2
                              ),)
                            ],
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.all(4),
                            margin: EdgeInsets.only(right: 16),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    stops: [0.1, 0.9],
                                    colors: [darkMode ? pennyBlack4 : pennyWhite4, darkMode ? pennyBlack3 : pennyWhite5]
                                ),
                                borderRadius: BorderRadius.circular(4)
                            ),
                            child: Text(symbol, style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: darkMode ? pennyWhite5 : pennyBlack2
                            ),)
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 28, right: 28),
                    child: Container(
                      height: 1,
                      margin: EdgeInsets.only(bottom: 16),
                      decoration: BoxDecoration(
                          color: darkMode ? pennyWhite5 : pennyBlack2
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 32, right: 32, bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('\$'+price_usd,
                          overflow: TextOverflow.fade,
                          maxLines: 1,
                          softWrap: false,
                          style: GoogleFonts.inter(
                              fontSize: 34,
                              fontWeight: FontWeight.w900,
                              color: volume_growth_way == 'up' ? pennyGreen : pennyRed
                          ),),
                        Row(
                          children: <Widget>[
                            Container(
                                padding: EdgeInsets.only(bottom: 3),
                                child: SvgPicture.asset(volume_growth_way == 'up' ? 'lib/assets/svg/arrow_up.svg' : 'lib/assets/svg/arrow_down.svg', height: 20, width: 20, color: volume_growth_way == 'up' ? pennyGreen : pennyRed)
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 3, left: 5),
                              child: Text(volume_growth_rate, style: GoogleFonts.inter(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: volume_growth_way == 'up' ? pennyGreen : pennyRed
                              ),),
                            )
                          ],
                        )
                      ],
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 28, right: 28),
                    child: Container(
                      height: 1,
                      margin: EdgeInsets.only(bottom: 16),
                      decoration: BoxDecoration(
                          color: darkMode ? pennyWhite5 : pennyBlack2
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 32, right: 32, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Market Cap', style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: darkMode ? pennyWhite3 : pennyBlack2
                        )),
                        Row(
                          children: <Widget>[
                            Text('\$' + market_cap_usd, style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: darkMode ? pennyWhite3 : pennyBlack2
                            )),
                            Container(
                                padding: EdgeInsets.only(bottom: 3, left: 8),
                                child: SvgPicture.asset(market_cap_growth_rate == 'up' ? 'lib/assets/svg/arrow_up.svg' : 'lib/assets/svg/arrow_down.svg', height: 11, width: 11, color: market_cap_growth_rate == 'up' ? pennyGreen : pennyRed)
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 3, left: 4),
                              child: Text(market_cap_growth_rate, style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: market_cap_growth_rate == 'up' ? pennyGreen : pennyRed
                              ),),
                            )
                          ],
                        )
                      ]
                    )
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 32, right: 32, bottom: 8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Fully Diluated', style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: darkMode ? pennyWhite3 : pennyBlack2
                                )),
                                Text('Market Cap', style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: darkMode ? pennyWhite3 : pennyBlack2
                                ))
                              ]
                            ),
                            Row(
                              children: <Widget>[
                                Text('\$' + fully_diluted_market_cap_usd, style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: darkMode ? pennyWhite3 : pennyBlack2
                                )),
                                Container(
                                    padding: EdgeInsets.only(bottom: 3, left: 8),
                                    child: SvgPicture.asset(market_cap_growth_way == 'up' ? 'lib/assets/svg/arrow_up.svg' : 'lib/assets/svg/arrow_down.svg', height: 11, width: 11, color: market_cap_growth_way == 'up' ? pennyGreen : pennyRed)
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 3, left: 4),
                                  child: Text(market_cap_growth_rate, style: GoogleFonts.inter(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: market_cap_growth_way == 'up' ? pennyGreen : pennyRed
                                  ),),
                                )
                              ],
                            )
                          ]
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 32, right: 32, bottom: 8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Volume (24h)', style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: darkMode ? pennyWhite3 : pennyBlack2
                            )),
                            Row(
                              children: <Widget>[
                                Text('\$' + volume_usd, style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: darkMode ? pennyWhite3 : pennyBlack2
                                )),
                                Container(
                                    padding: EdgeInsets.only(bottom: 3, left: 8),
                                    child: SvgPicture.asset(volume_growth_way == 'up' ? 'lib/assets/svg/arrow_up.svg' : 'lib/assets/svg/arrow_down.svg', height: 11, width: 11, color: volume_growth_way == 'up' ? pennyGreen : pennyRed)
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 3, left: 4),
                                  child: Text(volume_growth_rate, style: GoogleFonts.inter(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: volume_growth_way == 'up' ? pennyGreen : pennyRed
                                  ),),
                                )
                              ],
                            )
                          ]
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 28, right: 28),
                    child: Container(
                      height: 1,
                      margin: EdgeInsets.only(bottom: 16),
                      decoration: BoxDecoration(
                          color: darkMode ? pennyWhite5 : pennyBlack2
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 32, right: 32, bottom: 8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Total Supply', style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: darkMode ? pennyWhite3 : pennyBlack2
                            )),
                            Text(total_supply, style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: darkMode ? pennyWhite3 : pennyBlack2
                            ))
                          ]
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 32, right: 32, bottom: 8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Max Supply', style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: darkMode ? pennyWhite3 : pennyBlack2
                            )),
                            Text(max_supply, style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: darkMode ? pennyWhite3 : pennyBlack2
                            ))
                          ]
                      )
                  )
                ]
              ),
            )
        )
    );
  }
}
