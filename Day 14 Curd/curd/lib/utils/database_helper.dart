import 'dart:io';

import 'package:curd/model/Contact.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static const _databaseName = "contactData.db";
  static const _databaseVersion = 1;
  // singleton class
  DatabaseHelper._();
  static final DatabaseHelper instance = DatabaseHelper._();

  Future<Database> _database;

  Future<Database> get database {
    if (_database != null) return _database;

    _database = _initDatabase();
    return _database;
  }

  _initDatabase() async {
    Directory dataDirectory = await getApplicationDocumentsDirectory();
    String dbPath = join(dataDirectory.path, _databaseName);
    return await openDatabase(dbPath,
        version: _databaseVersion, onCreate: _onCreateDB);
  }

  _onCreateDB(Database db, int version) async {
    await db.execute('''
    CREATE TABLE ${Contact.tblcontact}(
      ${Contact.colId} INTEGER PRIMARY KEY AUTOINCREMENT,
      ${Contact.colName} TEXT NOT NULL,
      ${Contact.colMobil} TEXT NOT NULL
    )
    ''');
  }

  Future<int> insertContact(Contact contact) async {
    Database db = await database;
    return await db.insert(Contact.tblcontact, contact.toMap());
  }

  Future<List<Contact>> fetchContact() async {
    Database db = await database;
    List<Map> contacts = await db.query(Contact.tblcontact);
    return contacts.length == 0 ? [] : contacts.map((e) => Contact.fromMap(e)).toList();
  }
}
