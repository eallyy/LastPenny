import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:last_penny/constants/last_penny_static.dart';
import 'package:last_penny/constants/last_penny_theme.dart';
import 'package:last_penny/main.dart';
import 'package:url_launcher/url_launcher.dart';

class AuthorScreen extends StatefulWidget {
  @override
  _AuthorScreenState createState() => _AuthorScreenState();
}

class _AuthorScreenState extends State<AuthorScreen> {
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
                                    child: Text('Emir Alanyalıoğlu',
                                        overflow: TextOverflow.clip,
                                        style: GoogleFonts.inter(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: darkMode ? pennyWhite3 : pennyBlack2
                                        )
                                    )
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
                                    child: Text('This app designed and developed by Emir Alanyalıoğlu. For more information click the link down below.',
                                        overflow: TextOverflow.clip,
                                        style: GoogleFonts.inter(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: darkMode ? pennyWhite3 : pennyBlack2
                                        )
                                    )
                                )
                              ]
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      const url = "https://emiralanyalioglu.com/";
                                      launch(url);
                                    },
                                    child: Text('emiralanyalioglu.com', style: GoogleFonts.inter(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: darkMode ? pennyLinkLight : pennyLink
                                    ),)
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  GestureDetector(
                                      onTap: (){
                                        const url = "https://github.com/eallyy";
                                        launch(url);
                                      },
                                      child: Text('github.com/eallyy', style: GoogleFonts.inter(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyLinkLight : pennyLink
                                      ),)
                                  )
                                ],
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
      ),
    );
  }
}
