import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:last_penny/constants/last_penny_static.dart';
import 'package:last_penny/constants/last_penny_theme.dart';

import '../main.dart';

class MarketDatasScreen extends StatefulWidget {
  @override
  _MarketDatasScreenState createState() => _MarketDatasScreenState();
}

class _MarketDatasScreenState extends State<MarketDatasScreen> {
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
                  colors: [pennyGRD1_1, pennyGRD1_2]
              )
          ),
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: <Widget>[
              LastPennyAppBar(),
              Padding(
                padding: EdgeInsets.all(32),
                child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                            width: 150,
                            height: 150,
                            margin: EdgeInsets.only(top: 48, bottom: 32),
                            child: SvgPicture.asset('lib/assets/svg/LP_LastPenny.svg', color: darkMode ? pennyWhite3 : pennyBlack2)
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 230,
                                height: 1,
                                decoration: BoxDecoration(
                                    color: darkMode ? pennyWhite3 : pennyBlack2
                                ),
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('Market Datas Page',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              ),
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 230,
                                height: 1,
                                decoration: BoxDecoration(
                                    color: darkMode ? pennyWhite3 : pennyBlack2
                                ),
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Text('UNDER CONSTRUCTION!',
                            overflow: TextOverflow.clip,
                            style: GoogleFonts.inter(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: darkMode ? pennyWhite3 : pennyBlack2
                            )
                        )
                      ],
                    )
                ),
              )
            ],
          ),
        )
      )
    );
  }
}
