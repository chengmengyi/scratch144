import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_game_config_utils_fjeofjoe.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_user_info_fjeofjoekf.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_con_sspacr.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_routers_nxtyun/scratch144_router_utils_dnwkdjow.dart';

class Scratch144AaaUpLevelDialogControllerFjofjoe extends Scratch144ConSspacr{
  clickContinue(){
    Scratch144AaaUserInfoFjeofjoekf.instance.updateUserCoinsdjwidjoiw(Scratch144AaaGameConfigUtilsFjeofjoe.instance.upLevelAddNum());
    Scratch144RouterUtilsDnwkdjow.instance.closedwkpdkwpd();
  }
}