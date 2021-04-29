import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:last_penny/constants/last_penny_static.dart';
import 'package:last_penny/constants/last_penny_theme.dart';
import 'package:last_penny/main.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
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
                              Text('Account Settings', style: GoogleFonts.inter(
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
                        print('Email Tapped!');
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Email', style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: darkMode ? pennyWhite3 : pennyBlack2
                            ),),
                            Text('lastpenny@emiralanyalioglu.com',
                              overflow: TextOverflow.fade,
                              maxLines: 1,
                              softWrap: false,
                              style: GoogleFonts.inter(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: darkMode ? pennyLinkLight : pennyLink
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
                        print('Name Tapped!');
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Name', style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: darkMode ? pennyWhite3 : pennyBlack2
                            ),),
                            Text('Emir',
                              overflow: TextOverflow.fade,
                              maxLines: 1,
                              softWrap: false,
                              style: GoogleFonts.inter(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: darkMode ? pennyLinkLight : pennyLink
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
                        print('Update Password Tapped!');
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
                            Text('Update Password', style: GoogleFonts.inter(
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
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: GestureDetector(
                      onTap: (){
                        print('Delete Account Tapped!');
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
                                colors: [pennyGRD3_1, pennyGRD3_2]
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
                            Text('Delete Account', style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: pennyWhite3
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
