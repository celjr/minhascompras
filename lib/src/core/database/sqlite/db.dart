import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DB {
  DB._();

  static DB? _instance;
  static get instance {
    if (_instance != null) return _instance;
    _instance = DB._();

    return _instance;
  }

  static Database? _database;

  get database async {
    if (_database != null) return _database;

    _database = await _initDatabase();

    return _database;
  }

  Future<Database> _initDatabase() async {
    var path = join(await getDatabasesPath(), 'minhas_compras_app.db');

    return await openDatabase(path,
        version: 1, onCreate: _onCreate, onConfigure: _onConfigure);
  }

  _onConfigure(Database db) async {
    // Add support for cascade delete
    await db.execute("PRAGMA foreign_keys = ON");
  }

  _onCreate(Database db, int versao) async {
    await db.execute(_product);
    await db.execute(_price);
    await db.execute(_buyList);
    await db.execute(_category);
    await db.execute(_categories);
  }

  String get _buyList => ''' 
  CREATE TABLE buy_list(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    date TEXT NOT NULL
  )
  ''';
  String get _category => '''
  CREATE TABLE category(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
  )
  ''';
  String get _product => ''' 
  CREATE TABLE product(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    description TEXT,
    category_id INTERGER NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category (id)
  )
  ''';
  String get _price => ''' 
  CREATE TABLE price(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    price REAL NOT NULL,
    product_id INTERGER NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product (id)
  )
  ''';

  String get _categories => '''
   INSERT INTO category(name) VALUES('Outros'),
  ('Limpeza'),
  ('Higiene'),
  ('Laticinios'),
  ('Enlatados'),
  ('Frios'),
  ('Doces'),
  ('Eletronicos'),
  ('Frutas'),
  ('Verduras'),
  ('Jogos'),
  ('Livros'),
  ('Bebidas'),
  ('Roupas'),
  ('Roupa Intima'),
  ('Calçados'),
  ('Grãos')
  ''';
}
