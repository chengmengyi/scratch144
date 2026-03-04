import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_user_info_fjeofjoekf.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_con_sspacr.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_routers_nxtyun/scratch144_router_utils_dnwkdjow.dart';

class Scratch144AaaWinDialogControllerFjeifjoej extends Scratch144ConSspacr{

  clickContinue(int reward,Function() callback){
    Scratch144AaaUserInfoFjeofjoekf.instance.updateUserCoinsdjwidjoiw(reward);
    Scratch144RouterUtilsDnwkdjow.instance.closedwkpdkwpd();
    callback.call();
  }
}