import 'package:scratch144_base_dwhidjwo/scratch144_sql_pxhpkh/scratch144_sql_table_name_tleech.dart';
import 'package:sqflite/sqflite.dart';

class Scratch144SqlUtilsKtstsd {
  static final Scratch144SqlUtilsKtstsd scratch144quncjw = Scratch144SqlUtilsKtstsd();
  static Scratch144SqlUtilsKtstsd get instance => scratch144quncjw;

  Future<Database> scratch144_init_sql_yevowm() async {
    var database = await openDatabase(
      "scratch144tjsluj.db",
      version: 1,
      onCreate: (db, version) async {
        _scratch144_create_version1_db_uzqfnt(db);
      },
      // onUpgrade: (db,oldVersion,newVersion){
      //   if(newVersion==2){
      //     _createVersion2DB(db);
      //   }else if(newVersion==3){
      //     _createVersion3DB(db);
      //   }
      // },
    );
    return database;
  }

  void _scratch144_create_version1_db_uzqfnt(Database db) {
    db.execute('CREATE TABLE ${Scratch144SqlTableNameTleech.scratch144CardListejfiej} (id INTEGER PRIMARY KEY AUTOINCREMENT, cardType TEXT, cardCurrentNum INTEGER, cardTotalNum INTEGER,refreshTime INTEGER,lock INTEGER)',);
    db.execute('CREATE TABLE ${Scratch144SqlTableNameTleech.scratch144Achfjeofjoe} (id INTEGER PRIMARY KEY AUTOINCREMENT, taskType TEXT, todayTime TEXT, taskText TEXT, currentPro INTEGER, totalPro INTEGER,reward INTEGER)',);
  }
}
