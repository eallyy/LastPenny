import 'dart:async';
import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:last_penny/main.dart';

class DatabaseHelper {
  static DatabaseHelper _databaseHelper;
  static Database _database;

  DatabaseHelper._createInstance();

  factory DatabaseHelper() {
     if (_databaseHelper == null) {
       _databaseHelper = DatabaseHelper._createInstance();
     }
     return _databaseHelper;
  }

  Future<Database> get database async {
    if (_database == null) {
      _database = await initializeDatabase();
    }
    return _database;
  }

  Future<Database> initializeDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'last_penny.db';

    var localDB = openDatabase(path, version: 1, onCreate: _createDB);
    return localDB;
  }
  
  void _createDB(Database db, int newVersion) async {
    await db.execute("CREATE TABLE settings(id INTEGER PRIMARY KEY AUTOINCREMENT, dark_mode BOOLEAN, default_source TEXT)");
    await db.execute("INSERT INTO settings(default_source) VALUES('CoinMarketCap')");
  }

  // Get Settings
  void getSettings() async {
    Database db = await this.database;

    // Settings
    var settingsQuery = await db.rawQuery("SELECT * FROM settings");
    defaultSource = settingsQuery.asMap()[0]['default_source'];
  }

  // Default Source Update
  void setDefaultSource(String settings) async {
    Database db = await this.database;

    await db.execute("UPDATE settings SET default_source = '$settings'");
  }
}