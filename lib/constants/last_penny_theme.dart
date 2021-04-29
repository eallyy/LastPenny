import 'dart:ui';
import 'package:last_penny/main.dart';
import 'package:flutter/material.dart';

//
// LAST PENNY Theme Color
//
const pennyBlack = Color(0xFF000000);
const pennyBlack2 = Color(0xFF111111);
const pennyBlack3 = Color(0xFF1E1E1E);
const pennyBlack4 = Color(0xFF3C3C3C);
const pennyBlack5 = Color(0xFF3C3C3C);
const pennyBlack6 = Color(0xFF595959);
const pennyBlack7 = Color(0xFF727272);
const pennyBlack8 = Color(0xFF858585);
const pennyBlack9 = Color(0xFF999999);
const pennyBlack10 = Color(0xFFADADAD);

const pennyWhite = Color(0xFFFFFFFF);
const pennyWhite2 = Color(0xFFF6F6F6);
const pennyWhite3 = Color(0xFFECECEC);
const pennyWhite4 = Color(0xFFE1E1E1);
const pennyWhite5 = Color(0xFFD0D0D0);

//
// Gradient Colors
//

// Background Gradient
const pennyGRD1_1 = Color(0xFFE9E4F0);
const pennyGRD1_2 = Color(0xFFD3CCE3);

// Card Gradient [Home]
const pennyGRD2_1 = Color(0xFF536976);
const pennyGRD2_2 = Color(0xFF292E49);

// Delete Gradient [Account]
const pennyGRD3_1 = Color(0xFFED213A);
const pennyGRD3_2 = Color(0xFF93291E);

// Dark Top 10 Gradient [Home]
const pennyGRD4_1 = Color(0xFF0F0C29);
const pennyGRD4_2 = Color(0xFF24243E);

//
// Special Colors
//

// Link
const pennyLink = Color(0xFF3366BB);
const pennyLinkLight = Color(0xFF6FC6F2);

// Stock
const pennyGreen = Color(0xFF4CAF50);
const pennyRed = Color(0xFFF44336);

// Currency Colors
const pennyBTC = Color(0xFFF2A900);
const pennyETH = Color(0xFF3C3C3C);

//
// Dark Theme Functions
//

void setLastPennyTheme(String theme) {
  if (theme == 'dark') {
    darkMode = true;
  }
  else if (theme == 'light') {
    darkMode = false;
  }
}