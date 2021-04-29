import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:last_penny/constants/last_penny_static.dart';
import 'package:last_penny/constants/last_penny_theme.dart';
import 'package:last_penny/main.dart';
import 'package:last_penny/models/offlineDatas.dart';

class CurrencyScreen extends StatefulWidget {
  final String currency;

  CurrencyScreen({this.currency});

  @override
  _CurrencyScreenState createState() => _CurrencyScreenState();
}

class _CurrencyScreenState extends State<CurrencyScreen> {
  @override
  Widget build(BuildContext context) {
    // Fetching cryptocurrency datas
    Cryptocurrency currencyData = getCryptocurrency(widget.currency);

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
                    child: Text('Ranking: ' + currencyData.ranking, style: GoogleFonts.inter(
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
                              Text(currencyData.currency, style: GoogleFonts.inter(
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
                            child: Text(currencyData.symbol, style: GoogleFonts.inter(
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
                        Text('\$'+currencyData.price_usd,
                          overflow: TextOverflow.fade,
                          maxLines: 1,
                          softWrap: false,
                          style: GoogleFonts.inter(
                              fontSize: 34,
                              fontWeight: FontWeight.w900,
                              color: currencyData.volume_growth_way == 'up' ? pennyGreen : pennyRed
                          ),),
                        Row(
                          children: <Widget>[
                            Container(
                                padding: EdgeInsets.only(bottom: 3),
                                child: SvgPicture.asset(currencyData.volume_growth_way == 'up' ? 'lib/assets/svg/arrow_up.svg' : 'lib/assets/svg/arrow_down.svg', height: 20, width: 20, color: currencyData.volume_growth_way == 'up' ? pennyGreen : pennyRed)
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 3, left: 5),
                              child: Text(currencyData.volume_growth_rate, style: GoogleFonts.inter(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: currencyData.volume_growth_way == 'up' ? pennyGreen : pennyRed
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
                            Text('\$' + currencyData.market_cap_usd, style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: darkMode ? pennyWhite3 : pennyBlack2
                            )),
                            Container(
                                padding: EdgeInsets.only(bottom: 3, left: 8),
                                child: SvgPicture.asset(currencyData.market_cap_growth_rate == 'up' ? 'lib/assets/svg/arrow_up.svg' : 'lib/assets/svg/arrow_down.svg', height: 11, width: 11, color: currencyData.market_cap_growth_rate == 'up' ? pennyGreen : pennyRed)
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 3, left: 4),
                              child: Text(currencyData.market_cap_growth_rate, style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: currencyData.market_cap_growth_rate == 'up' ? pennyGreen : pennyRed
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
                                Text('\$' + currencyData.fully_diluted_market_cap_usd, style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: darkMode ? pennyWhite3 : pennyBlack2
                                )),
                                Container(
                                    padding: EdgeInsets.only(bottom: 3, left: 8),
                                    child: SvgPicture.asset(currencyData.market_cap_growth_way == 'up' ? 'lib/assets/svg/arrow_up.svg' : 'lib/assets/svg/arrow_down.svg', height: 11, width: 11, color: currencyData.market_cap_growth_way == 'up' ? pennyGreen : pennyRed)
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 3, left: 4),
                                  child: Text(currencyData.market_cap_growth_rate, style: GoogleFonts.inter(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: currencyData.market_cap_growth_way == 'up' ? pennyGreen : pennyRed
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
                                Text('\$' + currencyData.volume_usd, style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: darkMode ? pennyWhite3 : pennyBlack2
                                )),
                                Container(
                                    padding: EdgeInsets.only(bottom: 3, left: 8),
                                    child: SvgPicture.asset(currencyData.volume_growth_way == 'up' ? 'lib/assets/svg/arrow_up.svg' : 'lib/assets/svg/arrow_down.svg', height: 11, width: 11, color: currencyData.volume_growth_way == 'up' ? pennyGreen : pennyRed)
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 3, left: 4),
                                  child: Text(currencyData.volume_growth_rate, style: GoogleFonts.inter(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: currencyData.volume_growth_way == 'up' ? pennyGreen : pennyRed
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
                            Text(currencyData.total_supply, style: GoogleFonts.inter(
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
                            Text(currencyData.max_supply, style: GoogleFonts.inter(
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
