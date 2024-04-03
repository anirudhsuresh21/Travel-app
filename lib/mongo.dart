import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqliteService {
  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();

    return openDatabase(
      join(path, 'flutter.db'),
      onCreate: (database, version) async {
        await database.execute(
          """
          CREATE TABLE IF NOT EXISTS users (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            username TEXT,
            password TEXT
          )
          """
        );
        print("done");

        // Insert data directly into the users table
        await database.execute(
          """
          INSERT INTO users (username, password) VALUES 
          ('abc@gmail.com', 'admin'),
          ('abcd@gmail.com', 'root');
          """
        );

      },
      version: 1,
    );
  }
}
