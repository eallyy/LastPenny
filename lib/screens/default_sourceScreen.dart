import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:last_penny/constants/last_penny_static.dart';
import 'package:last_penny/constants/last_penny_theme.dart';
import 'package:last_penny/main.dart';

class DefaultSourceScreen extends StatefulWidget {
  @override
  _DefaultSourceScreenState createState() => _DefaultSourceScreenState();
}

class _DefaultSourceScreenState extends State<DefaultSourceScreen> {
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
                    padding: EdgeInsets.only(left: 16, right: 16, top: 25, bottom: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 16),
                          child: Row(
                            children: <Widget>[
                              Text('Default Source', style: GoogleFonts.inter(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                  color: darkMode ? pennyWhite3 : pennyBlack2
                              ),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          defaultSource = "CoinMarketCap";
                        });
                      },
                      child: Container(
                        height: 60,
                        margin: EdgeInsets.only(bottom: 8),
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
                                  color: darkMode ? pennyBlack2 : pennyWhite5,
                                  blurRadius: 10,
                                  spreadRadius: 0.1,
                                  offset: Offset(5, 5)
                              )
                            ]
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('CoinMarketCap', style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: defaultSource == "CoinMarketCap" ? FontWeight.w800 : FontWeight.w500,
                                color: defaultSource == "CoinMarketCap" ? darkMode ? pennyLinkLight : pennyLink : darkMode ? pennyWhite3 : pennyBlack2
                            ),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          defaultSource = "Investing";
                        });
                      },
                      child: Container(
                        height: 60,
                        margin: EdgeInsets.only(bottom: 8),
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
                                  color: darkMode ? pennyBlack2 : pennyWhite5,
                                  blurRadius: 10,
                                  spreadRadius: 0.1,
                                  offset: Offset(5, 5)
                              )
                            ]
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Investing', style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: defaultSource == "Investing" ? FontWeight.w800 : FontWeight.w500,
                                color: defaultSource == "Investing" ? darkMode ? pennyLinkLight : pennyLink : darkMode ? pennyWhite3 : pennyBlack2
                            ),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          defaultSource = "TradingView";
                        });
                      },
                      child: Container(
                        height: 60,
                        margin: EdgeInsets.only(bottom: 8),
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
                                  color: darkMode ? pennyBlack2 : pennyWhite5,
                                  blurRadius: 10,
                                  spreadRadius: 0.1,
                                  offset: Offset(5, 5)
                              )
                            ]
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('TradingView', style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: defaultSource == "TradingView" ? FontWeight.w800 : FontWeight.w500,
                                color: defaultSource == "TradingView" ? darkMode ? pennyLinkLight : pennyLink : darkMode ? pennyWhite3 : pennyBlack2
                            ),)
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
        )
    );
  }
}
