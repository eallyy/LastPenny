import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:last_penny/main.dart';

Future fetchInfos() async {
  final response = await http.get(Uri.parse('https://api.emiralanyalioglu.com/?lastpenny=1&infos=1'));

  if (response.statusCode == 200) {
    LastPennyVersion = json.decode(response.body)['version'];
  }
  else {
    throw Exception('API: Unexpected Error!');
  }
}