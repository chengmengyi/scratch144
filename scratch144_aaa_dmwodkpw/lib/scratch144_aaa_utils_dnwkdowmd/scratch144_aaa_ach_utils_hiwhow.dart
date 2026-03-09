import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_bean_djwjofepf/scratch144_aaa_ach_bean_fjeifjoe.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_user_info_fjeofjoekf.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_event_ipdmyu/scratch144_event_code_lmdqps.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_event_ipdmyu/scratch144_event_utils_dzijuo.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_sql_pxhpkh/scratch144_sql_table_name_tleech.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_sql_pxhpkh/scratch144_sql_utils_ktstsd.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';

class Scratch144AaaAchUtilsHiwhow {
  static final Scratch144AaaAchUtilsHiwhow _achUtilsHiwhow=Scratch144AaaAchUtilsHiwhow();
  static Scratch144AaaAchUtilsHiwhow get instance => _achUtilsHiwhow;

  initTodayAch()async{
    var database = await Scratch144SqlUtilsKtstsd.instance.scratch144_init_sql_yevowm();
    var todayTime = getTodayTime();
    var list = await database.query(Scratch144SqlTableNameTleech.scratch144Achfjeofjoe,where: '"todayTime" = ? ',whereArgs: [todayTime]);
    if(list.isNotEmpty){
      return;
    }
    await database.insert(
      Scratch144SqlTableNameTleech.scratch144Achfjeofjoe,
      Scratch144AaaAchBeanFjeifjoe(
        taskType: Scratch144TaskTypefejifj.openApp,
        currentPro: 0,
        totalPro: 1,
        taskText: "Login game 1 times",
        reward: 3000,
        todayTime: todayTime,
        received: 0,
      ).toJson(),
    );
    await database.insert(
      Scratch144SqlTableNameTleech.scratch144Achfjeofjoe,
      Scratch144AaaAchBeanFjeifjoe(
        taskType: Scratch144TaskTypefejifj.scratch,
        currentPro: 0,
        totalPro: 10,
        taskText: "Scratch 10 Cards",
        reward: 5000,
        todayTime: todayTime,
        received: 0,
      ).toJson(),
    );
    await database.insert(
      Scratch144SqlTableNameTleech.scratch144Achfjeofjoe,
      Scratch144AaaAchBeanFjeifjoe(
        taskType: Scratch144TaskTypefejifj.scratch,
        currentPro: 0,
        totalPro: 20,
        taskText: "Scratch 20 Cards",
        reward: 8000,
        todayTime: todayTime,
        received: 0,
      ).toJson(),
    );
  }

  Future<List<Scratch144AaaAchBeanFjeifjoe>> getAchList()async{
    var database = await Scratch144SqlUtilsKtstsd.instance.scratch144_init_sql_yevowm();
    var todayTime = getTodayTime();
    var list = await database.query(Scratch144SqlTableNameTleech.scratch144Achfjeofjoe,where: '"todayTime" = ? ',whereArgs: [todayTime]);
    if(list.isEmpty){
      return [];
    }
    List<Scratch144AaaAchBeanFjeifjoe> result=[];
    for (var value in list) {
      result.add(Scratch144AaaAchBeanFjeifjoe.fromJson(value));
    }
    return result;
  }

  updateTask(Scratch144TaskTypefejifj taskType)async{
    var database = await Scratch144SqlUtilsKtstsd.instance.scratch144_init_sql_yevowm();
    var todayTime = getTodayTime();
    var list = await database.query(Scratch144SqlTableNameTleech.scratch144Achfjeofjoe,where: '"todayTime" = ? ',whereArgs: [todayTime]);
    if(list.isEmpty){
      return;
    }
    bool updateTask=false,allCompleted=true;
    for (var value in list) {
      var bean = Scratch144AaaAchBeanFjeifjoe.fromJson(value);
      if(bean.taskType==taskType&&(bean.currentPro??0)<(bean.totalPro??0)){
        bean.currentPro=(bean.currentPro??0)+1;
        await database.update(Scratch144SqlTableNameTleech.scratch144Achfjeofjoe, bean.toJson(),where: '"id" = ?', whereArgs: [value["id"]]);
        updateTask=true;
      }
      if((bean.currentPro??0)<(bean.totalPro??0)){
        allCompleted=false;
      }
    }
    if(updateTask){
      Scratch144EventUtilsDzijuo.instance.scratch144_send_msg_olcuzr(scratch144Codembkrac: Scratch144EventCodeLmdqps.aUpdateAchTask);
      if(allCompleted){
        Scratch144AaaUserInfoFjeofjoekf.instance.updateAchInfo();
      }
    }
  }

  Future<bool> received(Scratch144AaaAchBeanFjeifjoe bean)async{
    var database = await Scratch144SqlUtilsKtstsd.instance.scratch144_init_sql_yevowm();
    var list = await database.query(Scratch144SqlTableNameTleech.scratch144Achfjeofjoe,where: '"todayTime" = ? AND "totalPro" = ? AND "taskType" = ?',whereArgs: [bean.todayTime,bean.totalPro,bean.taskType?.name]);
    if(list.isEmpty){
      return false;
    }
    var beanFjeifjoe = Scratch144AaaAchBeanFjeifjoe.fromJson(list.first);
    beanFjeifjoe.received=1;
    await database.update(Scratch144SqlTableNameTleech.scratch144Achfjeofjoe, beanFjeifjoe.toJson(),where: '"id" = ?',whereArgs: [list.first["id"]]);
    return true;
  }
}