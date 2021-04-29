import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:last_penny/constants/last_penny_static.dart';
import 'package:last_penny/constants/last_penny_theme.dart';
import 'package:last_penny/main.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
                            Text('App', style: GoogleFonts.inter(
                                fontSize: 22,
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
                            Text('Version: 1.0.0', style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.italic,
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
                      Navigator.of(context).pushNamed('/account');
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Account Settings', style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: darkMode ? pennyWhite3 : pennyBlack2
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 16, right: 16),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Appearance', style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: darkMode ? pennyWhite3 : pennyBlack2
                          ),),
                          Container(
                            height: 50,
                            width: 140,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    stops: [0.1, 0.9],
                                    colors: [darkMode ? pennyWhite4 : pennyWhite4, darkMode ? pennyWhite5 : pennyWhite5]
                                ),
                                borderRadius: BorderRadius.circular(4)
                            ),
                            child: Stack(
                              children: <Widget>[
                                AnimatedPositioned(
                                    left: darkMode ? 70 : 0,
                                    duration: Duration(milliseconds: 150),
                                    curve: Curves.easeInToLinear,
                                    child: Container(
                                        height: 36,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(4),
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
                                        )
                                    )
                                ),
                                Positioned(
                                    left: 14,
                                    top: 7,
                                    child: GestureDetector(
                                        onTap: (){
                                          setState(() {
                                            setLastPennyTheme('light');
                                          });
                                        },
                                        child: Text('Light', style: GoogleFonts.inter(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: darkMode ? pennyBlack2 : pennyWhite3
                                        ),)
                                    )
                                ),
                                Positioned(
                                    left: 85,
                                    top: 7,
                                    child: GestureDetector(
                                        onTap: (){
                                          setState(() {
                                            setLastPennyTheme('dark');
                                          });
                                        },
                                        child: Text('Dark', style: GoogleFonts.inter(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: darkMode ? pennyWhite3 : pennyBlack2
                                        ),)
                                    )
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushNamed('/defaultSource');
                    },
                    child: Container(
                      height: 60,
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
                                color: darkMode ? pennyBlack2 : pennyWhite5,
                                blurRadius: 10,
                                spreadRadius: 0.1,
                                offset: Offset(5, 5)
                            )
                          ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Default Source:', style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: darkMode ? pennyWhite3 : pennyBlack2
                          ),),
                          Text(defaultSource, style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: darkMode ? pennyLinkLight : pennyLink
                          ),)
                        ],
                      ),
                    ),
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
                  padding: EdgeInsets.only(left: 16, right: 16, top: 9, bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left:16),
                        child: Row(
                          children: <Widget>[
                            Text('About', style: GoogleFonts.inter(
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
                      Navigator.of(context).pushNamed('/author');
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Author', style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: darkMode ? pennyWhite3 : pennyBlack2
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
                      Navigator.of(context).pushNamed('/privacyPolicy');
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Privacy Policy', style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: darkMode ? pennyWhite3 : pennyBlack2
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
                      Navigator.of(context).pushNamed('/methodology');
                    },
                    child: Container(
                      height: 60,
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
                                color: darkMode ? pennyBlack2 : pennyWhite5,
                                blurRadius: 10,
                                spreadRadius: 0.1,
                                offset: Offset(5, 5)
                            )
                          ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Methodology', style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: darkMode ? pennyWhite3 : pennyBlack2
                          ),)
                        ],
                      ),
                    ),
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
                  padding: EdgeInsets.only(left: 16, right: 16, top: 9, bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left:16),
                        child: Row(
                          children: <Widget>[
                            Text('Support', style: GoogleFonts.inter(
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
                      const url = "https://emiralanyalioglu.com/lastpenny#contact";
                      launch(url);
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Report a Bug', style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: darkMode ? pennyWhite3 : pennyBlack2
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
                      const urlAuthor = 'https://emiralanyalioglu.com/lastpenny';
                      launch(urlAuthor);
                    },
                    child: Container(
                      height: 60,
                      margin: EdgeInsets.only(bottom: 32),
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Give Feedback', style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: darkMode ? pennyWhite3 : pennyBlack2
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
      )
    );
  }
}
