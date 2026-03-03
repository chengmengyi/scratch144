import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_play_listener.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_enum_djwdjow/scratch144_card_type_enum_dwidjow.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_con_sspacr.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_routers_nxtyun/scratch144_router_utils_dnwkdjow.dart';
import '../../scratch144_aaa_dialog_dwijijfie/scratch144_aaa_play_fail_dialog_fjeojfoe/scratch144_aaa_play_fail_dialog_fjeojfoe.dart';

class Scratch144AaaPlayControllerFjkoekoe extends Scratch144ConSspacr implements Scratch144AaaPlayListener{
  var start=false;
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

  @override
  startPlay(Scratch144CardTypeEnumDwidjow type) {
    start=true;
  }

  @override
  playResult(Scratch144CardTypeEnumDwidjow type, int reward) {
    if(reward<=0){
      Scratch144RouterUtilsDnwkdjow.instance.showDialogwouwojdw(
        child: Scratch144AaaPlayFailDialogFjeojfoe(
          callback: (){
            start=false;

          },
        ),
      );
      return;
    }
  }

  clickHome(){
    if(start){
      return;
    }
    Scratch144RouterUtilsDnwkdjow.instance.closedwkpdkwpd();
  }
}