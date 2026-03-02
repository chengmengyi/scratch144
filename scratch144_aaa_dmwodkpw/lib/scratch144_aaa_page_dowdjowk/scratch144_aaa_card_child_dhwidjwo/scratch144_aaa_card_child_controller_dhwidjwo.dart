import 'package:scratch144_base_dwhidjwo/scratch144_enum_djwdjow/scratch144_card_type_enum_dwidjow.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_con_sspacr.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_routers_nxtyun/scratch144_router_address_qvjthh.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_routers_nxtyun/scratch144_router_utils_dnwkdjow.dart';

class Scratch144AaaCardChildControllerDhwidjwo extends Scratch144ConSspacr{

  clickPlay(Scratch144CardTypeEnumDwidjow type){
    Scratch144RouterUtilsDnwkdjow.instance.toNamedsjwidjow(
      routerName: Scratch144RouterAddressQvjthh.aPlay,
      params: {"type":type},
    );
  }

  String getBgImages(Scratch144CardTypeEnumDwidjow type){
    switch(type){
      case Scratch144CardTypeEnumDwidjow.tiger: return "tiger_bg";
      case Scratch144CardTypeEnumDwidjow.emoji: return "emoji_bg";
      case Scratch144CardTypeEnumDwidjow.bigGame: return "big_bg";
      case Scratch144CardTypeEnumDwidjow.hot77: return "hot_bg";
      case Scratch144CardTypeEnumDwidjow.luckyRich: return "lucky_bg";
      case Scratch144CardTypeEnumDwidjow.sweet: return "sweet_bg";
      case Scratch144CardTypeEnumDwidjow.moneyStorm: return "money_bg";
      case Scratch144CardTypeEnumDwidjow.fruit: return "fruit_bg";
      case Scratch144CardTypeEnumDwidjow.mega: return "mega_bg";
    }
  }
}