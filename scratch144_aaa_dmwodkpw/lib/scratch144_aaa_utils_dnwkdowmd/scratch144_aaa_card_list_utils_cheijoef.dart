import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_bean_djwjofepf/scratch144_aaa_card_list_bean_fjeifjeo.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_game_config_utils_fjeofjoe.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_enum_djwdjow/scratch144_card_type_enum_dwidjow.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_event_ipdmyu/scratch144_event_code_lmdqps.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_event_ipdmyu/scratch144_event_utils_dzijuo.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_sql_pxhpkh/scratch144_sql_table_name_tleech.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_sql_pxhpkh/scratch144_sql_utils_ktstsd.dart';

class Scratch144AaaCardListUtilsCheijoef{
  static final Scratch144AaaCardListUtilsCheijoef _cardListUtilsCheijoef=Scratch144AaaCardListUtilsCheijoef();
  static Scratch144AaaCardListUtilsCheijoef get instance => _cardListUtilsCheijoef;

  initCardList()async{
    var database = await Scratch144SqlUtilsKtstsd.instance.scratch144_init_sql_yevowm();
    var list = await database.query(Scratch144SqlTableNameTleech.scratch144CardListejfiej);
    if(list.isNotEmpty){
      return;
    }
    for (var value in Scratch144CardTypeEnumDwidjow.values) {
      var bean = Scratch144AaaCardListBeanFjeifjeo(
        cardType: value,
        cardCurrentNum: 10,
        cardTotalNum: 10,
        refreshTime: 0,
        lock: value==Scratch144CardTypeEnumDwidjow.tiger?0:1,
      );
      await database.insert(Scratch144SqlTableNameTleech.scratch144CardListejfiej, bean.toJson());
    }
  }

  Future<List<Scratch144AaaCardListBeanFjeifjeo>> getCardList()async{
    var database = await Scratch144SqlUtilsKtstsd.instance.scratch144_init_sql_yevowm();
    var list = await database.query(Scratch144SqlTableNameTleech.scratch144CardListejfiej);
    List<Scratch144AaaCardListBeanFjeifjeo> result=[];
    for (var value in list) {
      result.add(Scratch144AaaCardListBeanFjeifjeo.fromJson(value));
    }
    return result;
  }

  Future<bool> unlockCard(Scratch144CardTypeEnumDwidjow? type)async{
    var database = await Scratch144SqlUtilsKtstsd.instance.scratch144_init_sql_yevowm();
    var list = await database.query(Scratch144SqlTableNameTleech.scratch144CardListejfiej,where: '"cardType" = ? AND "lock" = ?',whereArgs: [type?.name,1]);
    if(list.isEmpty){
      return false;
    }
    var bean = Scratch144AaaCardListBeanFjeifjeo.fromJson(list.first);
    bean.lock=0;
    await database.update(Scratch144SqlTableNameTleech.scratch144CardListejfiej, bean.toJson(),where: '"id" = ?',whereArgs: [list.first["id"]]);
    Scratch144EventUtilsDzijuo.instance.scratch144_send_msg_olcuzr(scratch144Codembkrac: Scratch144EventCodeLmdqps.aUnlockCard,scratch144Anyhqnitu: type);
    return true;
  }

  Future<int> updateCardCurrentNum(Scratch144CardTypeEnumDwidjow? type,int addNum)async{
    var database = await Scratch144SqlUtilsKtstsd.instance.scratch144_init_sql_yevowm();
    var list = await database.query(Scratch144SqlTableNameTleech.scratch144CardListejfiej,where: '"cardType" = ? ',whereArgs: [type?.name]);
    if(list.isEmpty){
      return 0;
    }
    var bean = Scratch144AaaCardListBeanFjeifjeo.fromJson(list.first);
    bean.cardCurrentNum=(bean.cardCurrentNum??0)+addNum;
    if((bean.cardCurrentNum??0)<=0){
      bean.cardCurrentNum=0;
      bean.refreshTime=Scratch144AaaGameConfigUtilsFjeofjoe.instance.refreshAllTime();
    }
    await database.update(Scratch144SqlTableNameTleech.scratch144CardListejfiej, bean.toJson(),where: '"id" = ?',whereArgs: [list.first["id"]]);
    Scratch144EventUtilsDzijuo.instance.scratch144_send_msg_olcuzr(
      scratch144Codembkrac: Scratch144EventCodeLmdqps.aUpdateCardInfo,
      scratch144Anyhqnitu: bean,
    );
    return bean.cardCurrentNum??0;
  }

  updateCardInfo(Scratch144AaaCardListBeanFjeifjeo bean)async{
    var database = await Scratch144SqlUtilsKtstsd.instance.scratch144_init_sql_yevowm();
    await database.update(Scratch144SqlTableNameTleech.scratch144CardListejfiej, bean.toJson(),where: '"cardType" = ?',whereArgs: [bean.cardType?.name]);
  }

  Future<Scratch144CardTypeEnumDwidjow?> getNextCardType(Scratch144CardTypeEnumDwidjow? currentType)async{
    var list = await getCardList();
    if(list.isEmpty){
      return null;
    }
    int index = list.indexWhere((e) => e.cardType == currentType);
    if (index == -1){
      return null;
    }

    // 先查后面
    Scratch144CardTypeEnumDwidjow? nextCardType;
    for (int i = index + 1; i < list.length; i++) {
      if ((list[i].cardCurrentNum??0) > 0) {
        nextCardType=list[i].cardType;
        break;
      }
    }
    if(null==nextCardType){
      // 再从头查到 index
      for (int i = 0; i < index; i++) {
        if ((list[i].cardCurrentNum??0) > 0) {
          nextCardType=list[i].cardType;
          break;
        }
      }
    }
    if(null==nextCardType){
      return null;
    }
    await unlockCard(nextCardType);
    return nextCardType;
  }
}