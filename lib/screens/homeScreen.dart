import 'dart:ui';
import 'package:fl_chart/fl_chart.dart';
import 'package:last_penny/constants/last_penny_theme.dart';
import 'package:last_penny/models/offlineDatas.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';
import 'package:last_penny/constants/last_penny_static.dart';
import 'package:last_penny/main.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool marketDatasPopUp = false;
  final ScrollController scrollController = ScrollController();

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
            child: Stack(
              children: <Widget>[
                ListView(
                  physics: ClampingScrollPhysics(),
                  controller: scrollController,
                  children: <Widget>[
                    // AppBar
                    LastPennyAppBar(),
                    // Scrolling Market Datas
                    Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
                      child: Container(
                        height: 20,
                        child: Marquee(
                          scrollAxis: Axis.horizontal,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          blankSpace: 20,
                          velocity: 10,
                          text: 'Market Cap:  \$'+marketDatas.market_cap+'    •    24h Vol:  \$'+marketDatas.vol_24h+'    •    Cryptocurrencies:  '+marketDatas.cryptocurrencies+'    •    Market Pairs:  '+marketDatas.market_pairs+'    •',
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: darkMode ? pennyWhite3 : pennyBlack2
                          ),
                        ),
                      ),
                    ),
                    // Dominance Data Card
                    Opacity(
                      opacity: marketDatasPopUp ? 0 : 1,
                      child: GestureDetector(
                          onTap: (){
                            setState(() {
                              scrollController.animateTo(
                                  0,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeInOut
                              );
                              marketDatasPopUp = true;
                            });
                          },
                          child: Container(
                            height: 190,
                            margin: EdgeInsets.only(left: 16, right: 16),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    stops: [0.2, 0.9],
                                    colors: [pennyGRD2_1, pennyGRD2_2]
                                ),
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 30),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(bottom: 16),
                                        child: Text('Dominance', style: GoogleFonts.inter(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                            color: pennyWhite4
                                        )),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(bottom: 16),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              height: 10,
                                              width: 10,
                                              margin: EdgeInsets.only(right: 10),
                                              decoration: BoxDecoration(
                                                  color: pennyBTC,
                                                  shape: BoxShape.circle
                                              ),
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text('Bitcoin', style: GoogleFonts.inter(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                    color: pennyWhite4
                                                ),),
                                                Text(' ('+marketDatas.dominance_btc.toString()+'%)', style: GoogleFonts.inter(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: pennyWhite4
                                                ),)
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(bottom: 16),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              height: 10,
                                              width: 10,
                                              margin: EdgeInsets.only(right: 10),
                                              decoration: BoxDecoration(
                                                  color: pennyETH,
                                                  shape: BoxShape.circle
                                              ),
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text('Ethereum', style: GoogleFonts.inter(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                    color: pennyWhite4
                                                ),),
                                                Text(' ('+marketDatas.dominance_eth.toString()+'%)', style: GoogleFonts.inter(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: pennyWhite4
                                                ),)
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              height: 10,
                                              width: 10,
                                              margin: EdgeInsets.only(right: 10),
                                              decoration: BoxDecoration(
                                                  color: pennyBlack10,
                                                  shape: BoxShape.circle
                                              ),
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text('Other', style: GoogleFonts.inter(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                    color: pennyWhite4
                                                ),),
                                                Text(' ('+marketDatas.dominance_other.toString()+'%)', style: GoogleFonts.inter(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: pennyWhite4
                                                ),)
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 130,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          stops: [0.4, 0.9],
                                          colors: [pennyGRD1_1, pennyGRD1_2]
                                      ),
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                            spreadRadius: -10,
                                            blurRadius: 17,
                                            offset: Offset(-5, -5),
                                            color: pennyWhite5
                                        ),
                                        BoxShadow(
                                            spreadRadius: -2,
                                            blurRadius: 10,
                                            offset: Offset(7, 7),
                                            color: pennyBlack2
                                        )
                                      ]
                                  ),
                                  child: Container(
                                      child: Stack(
                                        children: <Widget>[
                                          Stack(
                                            children: [
                                              PieChart(
                                                  PieChartData(
                                                      centerSpaceRadius: 20,
                                                      sectionsSpace: 4,
                                                      sections: [
                                                        PieChartSectionData(
                                                          value: marketDatas.dominance_btc,
                                                          color: pennyBTC,
                                                          showTitle: false,
                                                        ),
                                                        PieChartSectionData(
                                                            value: marketDatas.dominance_eth,
                                                            color: pennyETH,
                                                            showTitle: false
                                                        ),
                                                        PieChartSectionData(
                                                            value: marketDatas.dominance_other,
                                                            color: pennyBlack10,
                                                            showTitle: false
                                                        )
                                                      ]
                                                  ),
                                                  swapAnimationDuration: Duration(milliseconds: 150),
                                                  swapAnimationCurve: Curves.linear
                                              ),
                                              Positioned(
                                                left: 45,
                                                top: 45,
                                                child: Container(
                                                    height: 40,
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                        gradient: LinearGradient(
                                                            begin: Alignment.topLeft,
                                                            end: Alignment.bottomRight,
                                                            stops: [0.4, 0.9],
                                                            colors: [pennyGRD1_1, pennyGRD1_2]
                                                        ),
                                                        shape: BoxShape.circle,
                                                        boxShadow: [
                                                          BoxShadow(
                                                              spreadRadius: -10,
                                                              blurRadius: 17,
                                                              offset: Offset(-5, -5),
                                                              color: pennyWhite5
                                                          ),
                                                          BoxShadow(
                                                              spreadRadius: -2,
                                                              blurRadius: 10,
                                                              offset: Offset(7, 7),
                                                              color: darkMode ? pennyBlack3 : pennyBlack2
                                                          )
                                                        ]
                                                    )
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                  ),
                                )
                              ],
                            ),
                          )
                      )
                    ),
                    // Top 10 Coins
                    Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 25, bottom: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left:16),
                            child: Row(
                              children: <Widget>[
                                Text('Top Coins', style: GoogleFonts.inter(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w900,
                                    color: darkMode ? pennyWhite3 : pennyBlack2
                                ),)
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 16),
                            child: Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: (){
                                    Navigator.of(context).pushNamed('/top100');
                                  },
                                  child: Text('See All', style: GoogleFonts.inter(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: darkMode ? pennyLinkLight : pennyLink
                                  ),),
                                )
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
                            Navigator.of(context).pushNamed('/currency', arguments: top10Coins[index].symbol);
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
                                          child: Text(top10Coins[index].currency,
                                            overflow: TextOverflow.fade,
                                            maxLines: 1,
                                            softWrap: false,
                                            style: GoogleFonts.inter(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                                color: darkMode ? pennyWhite3 : pennyBlack2
                                            ),)
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
                Visibility(
                  visible: marketDatasPopUp,
                  child: AnimatedOpacity(
                    opacity: marketDatasPopUp ? 1 : 0,
                    duration: Duration(milliseconds: 1000),
                    child: GestureDetector(
                        onTap: (){
                          setState(() {
                            marketDatasPopUp = false;
                          });
                        },
                        child: Container(
                          child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                              child: Container(
                                color: Colors.transparent,
                              )
                          ),
                        )
                    )
                  )
                ),
                Padding(
                  padding: EdgeInsets.only(top: 118),
                  child: Visibility(
                    visible: marketDatasPopUp,
                    child: AnimatedOpacity(
                      opacity: marketDatasPopUp ? 1 : 0,
                      duration: Duration(milliseconds: 1000),
                      child: ListView(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        children: <Widget>[
                          Container(
                              height: 380,
                              margin: EdgeInsets.only(left: 16, right: 16),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      stops: [0.2, 0.9],
                                      colors: [pennyGRD2_1, pennyGRD2_2]
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: darkMode ? pennyBlack2 : pennyBlack10,
                                        blurRadius: 10,
                                        spreadRadius: 0.1,
                                        offset: Offset(4, 4)
                                    )
                                  ]
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 16, right: 16, top: 26, bottom: 16),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(right: 30),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                margin: EdgeInsets.only(bottom: 16),
                                                child: Text('Dominance', style: GoogleFonts.inter(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w800,
                                                    color: pennyWhite4
                                                )),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(bottom: 16),
                                                child: Row(
                                                  children: <Widget>[
                                                    Container(
                                                      height: 10,
                                                      width: 10,
                                                      margin: EdgeInsets.only(right: 10),
                                                      decoration: BoxDecoration(
                                                          color: pennyBTC,
                                                          shape: BoxShape.circle
                                                      ),
                                                    ),
                                                    Row(
                                                      children: <Widget>[
                                                        Text('Bitcoin', style: GoogleFonts.inter(
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w600,
                                                            color: pennyWhite4
                                                        ),),
                                                        Text(' ('+marketDatas.dominance_btc.toString()+'%)', style: GoogleFonts.inter(
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w500,
                                                            color: pennyWhite4
                                                        ),)
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(bottom: 16),
                                                child: Row(
                                                  children: <Widget>[
                                                    Container(
                                                      height: 10,
                                                      width: 10,
                                                      margin: EdgeInsets.only(right: 10),
                                                      decoration: BoxDecoration(
                                                          color: pennyETH,
                                                          shape: BoxShape.circle
                                                      ),
                                                    ),
                                                    Row(
                                                      children: <Widget>[
                                                        Text('Ethereum', style: GoogleFonts.inter(
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w600,
                                                            color: pennyWhite4
                                                        ),),
                                                        Text(' ('+marketDatas.dominance_eth.toString()+'%)', style: GoogleFonts.inter(
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w500,
                                                            color: pennyWhite4
                                                        ),)
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                child: Row(
                                                  children: <Widget>[
                                                    Container(
                                                      height: 10,
                                                      width: 10,
                                                      margin: EdgeInsets.only(right: 10),
                                                      decoration: BoxDecoration(
                                                          color: pennyBlack10,
                                                          shape: BoxShape.circle
                                                      ),
                                                    ),
                                                    Row(
                                                      children: <Widget>[
                                                        Text('Other', style: GoogleFonts.inter(
                                                            fontSize: 16,
                                                            fontWeight: FontWeight.w600,
                                                            color: pennyWhite4
                                                        ),),
                                                        Text(' ('+marketDatas.dominance_other.toString()+'%)', style: GoogleFonts.inter(
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w500,
                                                            color: pennyWhite4
                                                        ),)
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 130,
                                          width: 130,
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  stops: [0.4, 0.9],
                                                  colors: [pennyGRD1_1, pennyGRD1_2]
                                              ),
                                              shape: BoxShape.circle,
                                              boxShadow: [
                                                BoxShadow(
                                                    spreadRadius: -10,
                                                    blurRadius: 17,
                                                    offset: Offset(-5, -5),
                                                    color: pennyWhite5
                                                ),
                                                BoxShadow(
                                                    spreadRadius: -2,
                                                    blurRadius: 10,
                                                    offset: Offset(7, 7),
                                                    color: pennyBlack2
                                                )
                                              ]
                                          ),
                                          child: Container(
                                              child: Stack(
                                                children: <Widget>[
                                                  Stack(
                                                    children: [
                                                      PieChart(
                                                          PieChartData(
                                                              centerSpaceRadius: 20,
                                                              sectionsSpace: 4,
                                                              sections: [
                                                                PieChartSectionData(
                                                                  value: marketDatas.dominance_btc,
                                                                  color: pennyBTC,
                                                                  showTitle: false,
                                                                ),
                                                                PieChartSectionData(
                                                                    value: marketDatas.dominance_eth,
                                                                    color: pennyETH,
                                                                    showTitle: false
                                                                ),
                                                                PieChartSectionData(
                                                                    value: marketDatas.dominance_other,
                                                                    color: pennyBlack10,
                                                                    showTitle: false
                                                                )
                                                              ]
                                                          ),
                                                          swapAnimationDuration: Duration(milliseconds: 150),
                                                          swapAnimationCurve: Curves.linear
                                                      ),
                                                      Positioned(
                                                        left: 45,
                                                        top: 45,
                                                        child: Container(
                                                            height: 40,
                                                            width: 40,
                                                            decoration: BoxDecoration(
                                                                gradient: LinearGradient(
                                                                    begin: Alignment.topLeft,
                                                                    end: Alignment.bottomRight,
                                                                    stops: [0.4, 0.9],
                                                                    colors: [pennyGRD1_1, pennyGRD1_2]
                                                                ),
                                                                shape: BoxShape.circle,
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                      spreadRadius: -10,
                                                                      blurRadius: 17,
                                                                      offset: Offset(-5, -5),
                                                                      color: pennyWhite5
                                                                  ),
                                                                  BoxShadow(
                                                                      spreadRadius: -2,
                                                                      blurRadius: 10,
                                                                      offset: Offset(7, 7),
                                                                      color: darkMode ? pennyBlack3 : pennyBlack2
                                                                  )
                                                                ]
                                                            )
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              )
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 16, bottom: 16),
                                    child: Container(
                                      height: 1,
                                      decoration: BoxDecoration(
                                          color: pennyBlack10
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.all(16),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Column(
                                                children: [
                                                  Text('Market Cap (USD)', style: GoogleFonts.inter(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                    color: pennyWhite3
                                                ),),
                                                  SizedBox(
                                                    height: 4,
                                                  ),
                                                  Text('\$'+marketDatas.market_cap, style: GoogleFonts.inter(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                      color: pennyWhite3
                                                  ),),
                                                  Padding(
                                                    padding: EdgeInsets.only(top: 16, bottom: 16),
                                                    child: Container(
                                                      height: 1,
                                                      width: 50,
                                                      decoration: BoxDecoration(
                                                          color: pennyBlack10
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    children: [Text('Cryptocurrencies', style: GoogleFonts.inter(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w600,
                                                        color: pennyWhite3
                                                    ),),
                                                      SizedBox(
                                                        height: 4,
                                                      ),
                                                      Text(marketDatas.cryptocurrencies, style: GoogleFonts.inter(
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.w500,
                                                          color: pennyWhite3
                                                      ),)
                                                    ],
                                                  )
                                                ]
                                              ),
                                              SizedBox(
                                                width: 16,
                                              ),
                                              Column(
                                                children: [Text('24h Volume (USD)', style: GoogleFonts.inter(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                    color: pennyWhite3
                                                ),),
                                                  SizedBox(
                                                    height: 4,
                                                  ),
                                                  Text('\$'+marketDatas.vol_24h, style: GoogleFonts.inter(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w500,
                                                      color: pennyWhite3
                                                  ),),
                                                  Padding(
                                                    padding: EdgeInsets.only(top: 16, bottom: 16),
                                                    child: Container(
                                                      height: 1,
                                                      width: 50,
                                                      decoration: BoxDecoration(
                                                          color: pennyBlack10
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    children: [Text('Market Pairs', style: GoogleFonts.inter(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w600,
                                                        color: pennyWhite3
                                                    ),),
                                                      SizedBox(
                                                        height: 4,
                                                      ),
                                                      Text(marketDatas.market_pairs, style: GoogleFonts.inter(
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.w500,
                                                          color: pennyWhite3
                                                      ),)
                                                    ],
                                                  )
                                                ]
                                              )
                                            ],
                                          ),
                                        ]
                                      )
                                  )
                                ],
                              )
                          )
                        ]
                      )
                    )
                  )
                )
              ],
            )
          )
      )
    );
  }
}
