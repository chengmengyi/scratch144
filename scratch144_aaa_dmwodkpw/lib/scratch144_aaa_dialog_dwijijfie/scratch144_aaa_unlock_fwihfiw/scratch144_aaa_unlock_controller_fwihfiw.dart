import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_card_list_utils_cheijoef.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_game_config_utils_fjeofjoe.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_staorage_wijfoefkoe.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_user_info_fjeofjoekf.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_enum_djwdjow/scratch144_card_type_enum_dwidjow.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_con_sspacr.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_routers_nxtyun/scratch144_router_utils_dnwkdjow.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_ad_utils_fjijfoe.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';

class Scratch144AaaUnlockControllerFwihfiw extends Scratch144ConSspacr{

  useMoneyUnlock(Scratch144CardTypeEnumDwidjow? type,Function() unlockCallback){
    var unlockMoneyNum = Scratch144AaaGameConfigUtilsFjeofjoe.instance.unlockMoneyNum();
    if(aCoinsNumwdjowkod.getData()<unlockMoneyNum){
      scratch144ShowToastupfsnd(text: "Not enough gold coins");
      return;
    }
    _unlock(type, unlockCallback,true);
  }

  lookAdUnLock(Scratch144CardTypeEnumDwidjow? type,Function() unlockCallback){
    Scratch144AdUtilsFjijfoe.instance.showAdAAAAAAdjiwjdoiw(
      callback: (give){
        if(give){
          _unlock(type, unlockCallback,false);
        }else{
          scratch144ShowToastupfsnd(text: "Unlocking failed, please try again");
        }
      }
    );
  }

  _unlock(Scratch144CardTypeEnumDwidjow? type,Function() unlockCallback,bool useMoney)async{
    var result = await Scratch144AaaCardListUtilsCheijoef.instance.unlockCard(type);
    if(result){
      if(useMoney){
        Scratch144AaaUserInfoFjeofjoekf.instance.updateUserCoinsdjwidjoiw(-Scratch144AaaGameConfigUtilsFjeofjoe.instance.unlockMoneyNum());
      }
      Scratch144RouterUtilsDnwkdjow.instance.closedwkpdkwpd();
      unlockCallback.call();
    }else{
      scratch144ShowToastupfsnd(text: "Unlocking failed, please try again");
    }
  }

  String getBgImages(Scratch144CardTypeEnumDwidjow? type){
    switch(type){
      case Scratch144CardTypeEnumDwidjow.tiger: return "lock_tiger";
      case Scratch144CardTypeEnumDwidjow.emoji: return "lock_emoji";
      case Scratch144CardTypeEnumDwidjow.bigGame: return "lock_big";
      case Scratch144CardTypeEnumDwidjow.hot77: return "lock_hot";
      case Scratch144CardTypeEnumDwidjow.luckyRich: return "lock_lucky";
      case Scratch144CardTypeEnumDwidjow.sweet: return "lock_sweet";
      case Scratch144CardTypeEnumDwidjow.moneyStorm: return "lock_money";
      case Scratch144CardTypeEnumDwidjow.fruit: return "lock_fruit";
      case Scratch144CardTypeEnumDwidjow.mega: return "lock_mega";
      default: return "lock_tiger";
    }
  }

  clickClose(){
    Scratch144RouterUtilsDnwkdjow.instance.closedwkpdkwpd();
  }
}