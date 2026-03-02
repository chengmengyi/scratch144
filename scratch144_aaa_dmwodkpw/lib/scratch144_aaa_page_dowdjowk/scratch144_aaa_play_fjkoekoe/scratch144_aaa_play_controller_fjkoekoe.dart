import 'package:scratch144_base_dwhidjwo/scratch144_enum_djwdjow/scratch144_card_type_enum_dwidjow.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_con_sspacr.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_routers_nxtyun/scratch144_router_utils_dnwkdjow.dart';

class Scratch144AaaPlayControllerFjkoekoe extends Scratch144ConSspacr{
  late Scratch144CardTypeEnumDwidjow type;

  @override
  void onInit() {
    super.onInit();
    type=Scratch144RouterUtilsDnwkdjow.instance.getParamsdwkepkpe()["type"];
  }

  String getBgImages(){
    switch(type){
      case Scratch144CardTypeEnumDwidjow.tiger: return "play_tiger_bg";
      case Scratch144CardTypeEnumDwidjow.emoji: return "play_emoji_bg";
      case Scratch144CardTypeEnumDwidjow.bigGame: return "play_big_bg";
      case Scratch144CardTypeEnumDwidjow.hot77: return "play_hot_bg";
      case Scratch144CardTypeEnumDwidjow.luckyRich: return "play_lucky_bg";
      case Scratch144CardTypeEnumDwidjow.sweet: return "play_sweet_bg";
      case Scratch144CardTypeEnumDwidjow.moneyStorm: return "play_money_bg";
      case Scratch144CardTypeEnumDwidjow.fruit: return "play_fruit_bg";
      case Scratch144CardTypeEnumDwidjow.mega: return "play_mega_bg";
    }
  }

  clickHome(){
    Scratch144RouterUtilsDnwkdjow.instance.closedwkpdkwpd();
  }
}