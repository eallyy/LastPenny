import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:last_penny/constants/last_penny_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:last_penny/main.dart';

// Screens
import 'package:last_penny/screens/homeScreen.dart';
import 'package:last_penny/screens/market_datasScreen.dart';
import 'package:last_penny/screens/methodologyScreen.dart';
import 'package:last_penny/screens/privacy_policyScreen.dart';
import 'package:last_penny/screens/routing_errorScreen.dart';
import 'package:last_penny/screens/settingsScreen.dart';
import 'package:last_penny/screens/aboutScreen.dart';
import 'package:last_penny/screens/top100Screen.dart';
import 'package:last_penny/screens/accountScreen.dart';
import 'package:last_penny/screens/default_sourceScreen.dart';
import 'package:last_penny/screens/authorScreen.dart';
import 'package:last_penny/screens/currencyScreen.dart';

// LastPennyRouteGenerator
class LastPennyRouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      // Drawer Menu Routes
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/marketDatas':
        return MaterialPageRoute(builder: (_) => MarketDatasScreen());
      case '/settings':
        return MaterialPageRoute(builder: (_) => SettingsScreen());
      case '/about':
        return MaterialPageRoute(builder: (_) => AboutScreen());
      // In-Page Routes
      case '/currency':
        return MaterialPageRoute(builder: (_) => CurrencyScreen(
          currency: args,
        ));
      case '/account':
        return MaterialPageRoute(builder: (_) => AccountScreen());
      case '/defaultSource':
        return MaterialPageRoute(builder: (_) => DefaultSourceScreen());
      case '/author':
        return MaterialPageRoute(builder: (_) => AuthorScreen());
      case '/privacyPolicy':
        return MaterialPageRoute(builder: (_) => PrivacyPolicyScreen());
      case '/methodology':
        return MaterialPageRoute(builder: (_) => MethodologyScreen());
      case '/top100':
        return MaterialPageRoute(builder: (_) => Top100Screen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) => RoutingErrorScreen());
  }
}

// LastPennyDrawer
final advancedDrawerController = AdvancedDrawerController();

void showLastPennyDrawer() {
  advancedDrawerController.showDrawer();
}

void hideLastPennyDrawer() {
  advancedDrawerController.hideDrawer();
}

bool isLastPennyDrawerOpen() {
  return advancedDrawerController.value.visible;
}

class LastPennyDrawer extends StatefulWidget {
  final Widget child;
  final AdvancedDrawerController controller = advancedDrawerController;

  LastPennyDrawer({this.child});

  @override
  _LastPennyDrawerState createState() => _LastPennyDrawerState();
}

class _LastPennyDrawerState extends State<LastPennyDrawer> {
  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdropColor: darkMode ? pennyBlack3 : pennyWhite5,
      animationDuration: Duration(milliseconds: 1000),
      controller: widget.controller,
      child: widget.child,
      drawer: SafeArea(
        child: Container(
            child: ListTileTheme(
              textColor: darkMode ? pennyWhite3 : pennyBlack2,
              iconColor: darkMode ? pennyWhite3 : pennyBlack2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              width: 150,
                              height: 150,
                              margin: EdgeInsets.only(top: 48, bottom: 32),
                              child: SvgPicture.asset('lib/assets/svg/LP_LastPenny.svg', color: darkMode ? pennyWhite3 : pennyBlack2)
                          )
                        ],
                      ),
                      // Drawer Menu Pages
                      Container(
                          margin: EdgeInsets.only(left: 16, right: 16, bottom: 32),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  // Home [Drawer] Button onTap Events
                                  setState(() {
                                    Navigator.of(context).pushNamed('/');
                                    hideLastPennyDrawer();
                                  });
                                },
                                child: Container(
                                    child: Text('Home', style: GoogleFonts.inter(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: darkMode ? pennyWhite3 : pennyBlack2
                                    ))
                                ),
                              )
                            ],
                          )
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 16, right: 16, bottom: 32),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    Navigator.of(context).pushNamed('/marketDatas');
                                    hideLastPennyDrawer();
                                  });
                                },
                                child: Container(
                                    child: Text('Market Datas', style: GoogleFonts.inter(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: darkMode ? pennyWhite3 : pennyBlack2
                                    ))
                                ),
                              )
                            ],
                          )
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 16, right: 16, bottom: 32),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    Navigator.of(context).pushNamed('/settings');
                                    hideLastPennyDrawer();
                                  });
                                },
                                child: Container(
                                    child: Text('Settings', style: GoogleFonts.inter(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: darkMode ? pennyWhite3 : pennyBlack2
                                    ))
                                ),
                              )
                            ],
                          )
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 16, right: 16, bottom: 32),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  // About [Drawer] Button onTap Events
                                  setState(() {
                                    Navigator.of(context).pushNamed('/about');
                                    hideLastPennyDrawer();
                                  });
                                },
                                child: Container(
                                    child: Text('About', style: GoogleFonts.inter(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: darkMode ? pennyWhite3 : pennyBlack2
                                    ))
                                ),
                              )
                            ],
                          )
                      )
                    ],
                  ),
                  // Drawer Copyright
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 70),
                        child: Text('Copyright © 2021   |   Emir Alanyalıoğlu', style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: darkMode ? pennyWhite3 : pennyBlack2
                        )),
                      )
                    ],
                  )
                ],
              ),
            )
        ),
      ),
    );
  }
}

// LastPennyAppBar
class LastPennyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // AppBar
    return Container(
        margin: EdgeInsets.only(left: 16, right: 32, top: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
                onTap: (){
                  // Drawer onTap Events
                  showLastPennyDrawer();
                },
                child: SvgPicture.asset('lib/assets/svg/drawer_icon.svg', color: darkMode ? pennyWhite3 : pennyBlack2)
            ),
            Container(
              height: 50,
              width: 235,
              child: SvgPicture.asset('lib/assets/svg/LASTPENNY_LastPenny.svg', color: darkMode ? pennyWhite3 : pennyBlack2),
            ),
          ],
        ),
      );
  }
}