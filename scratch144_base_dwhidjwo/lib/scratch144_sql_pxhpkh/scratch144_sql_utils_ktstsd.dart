import 'package:scratch144_base_dwhidjwo/scratch144_sql_pxhpkh/scratch144_sql_table_name_tleech.dart';
import 'package:sqflite/sqflite.dart';

class Scratch144hrzmja {
  static final Scratch144hrzmja scratch144quncjw = Scratch144hrzmja();
  static Scratch144hrzmja get scratch144_instance_xcvgjh => scratch144quncjw;

  void scratch144_create_version1_db_uzqfnt(Database db) {
    db.execute(
      'CREATE TABLE ${Scratch144hbrydk.homeProgress} (id INTEGER PRIMARY KEY AUTOINCREMENT, type TEXT, step INTEGER, received INTEGER)',
    );
    db.execute(
      'CREATE TABLE ${Scratch144hbrydk.cashQuiz20Info} (id INTEGER PRIMARY KEY AUTOINCREMENT, cashType TEXT, cashMoney INTEGER, cashStep TEXT, quizNum INTEGER, totalQuizNum INTEGER)',
    );
    db.execute(
      'CREATE TABLE ${Scratch144hbrydk.cashQueueInfo} (id INTEGER PRIMARY KEY AUTOINCREMENT, cashType TEXT, cashMoney INTEGER, cashStep TEXT, currentPro INTEGER, totalPro INTEGER)',
    );
    db.execute(
      'CREATE TABLE ${Scratch144hbrydk.cashQuiz50AndLogin7Info} (id INTEGER PRIMARY KEY AUTOINCREMENT, cashType TEXT, cashMoney INTEGER, cashStep TEXT, quizNum INTEGER, loginNum INTEGER,quizTotalNum INTEGER,loginTotalNum INTEGER)',
    );
    db.execute(
      'CREATE TABLE ${Scratch144hbrydk.cashLoopTaskInfo} (id INTEGER PRIMARY KEY AUTOINCREMENT, cashType TEXT, cashMoney INTEGER, cashStep TEXT, currentPro INTEGER, totalPro INTEGER, taskId INTEGER)',
    );
    db.execute(
      'CREATE TABLE ${Scratch144hbrydk.cashAccountInfo} (id INTEGER PRIMARY KEY AUTOINCREMENT, cashType TEXT, cashAccount TEXT)',
    );
  }

  Future<Database> scratch144_init_sql_yevowm() async {
    var database = await openDatabase(
      "scratch144tjsluj.db",
      version: 1,
      onCreate: (db, version) async {
        scratch144_create_version1_db_uzqfnt(db);
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
}
