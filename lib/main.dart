import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:last_penny/constants/last_penny_static.dart';
import 'package:last_penny/screens/homeScreen.dart';

bool darkMode = false;
String defaultSource = "CoinMarketCap";

void main() {
  runApp(LastPenny());
}

class LastPenny extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      initialRoute: '/',
      onGenerateRoute: LastPennyRouteGenerator.generateRoute
    );
  }
}
