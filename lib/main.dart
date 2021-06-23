import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:last_penny/constants/last_penny_static.dart';
import 'package:last_penny/screens/homeScreen.dart';
import 'package:last_penny/models/local_db.dart';
import 'package:last_penny/models/api.dart';

bool darkMode = false;
String defaultSource = '';

String dominanceBTC = '1';
String dominanceETH = '1';
String dominanceOther = '1';
String cryptocurrencies = '-';
String marketCap = '-';
String marketPairs = '-';
String vol24h = '-';

String LastPennyVersion = '';

final DatabaseHelper SQLiteHelper = DatabaseHelper();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(LastPenny());
}

class LastPenny extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    fetchInfos();
    SQLiteHelper.getSettings();
    sleep(Duration(milliseconds: 3000));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      initialRoute: '/',
      onGenerateRoute: LastPennyRouteGenerator.generateRoute
    );
  }
}
