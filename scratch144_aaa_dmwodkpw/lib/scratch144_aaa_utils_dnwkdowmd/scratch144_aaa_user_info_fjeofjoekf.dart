import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_staorage_wijfoefkoe.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_event_ipdmyu/scratch144_event_code_lmdqps.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_event_ipdmyu/scratch144_event_utils_dzijuo.dart';

class Scratch144AaaUserInfoFjeofjoekf{
  static final Scratch144AaaUserInfoFjeofjoekf _fjeofjoekf=Scratch144AaaUserInfoFjeofjoekf();
  static Scratch144AaaUserInfoFjeofjoekf get instance => _fjeofjoekf;

  updateUserCoinsdjwidjoiw(int addNum){
    aCoinsNumwdjowkod.saveData(aCoinsNumwdjowkod.getData()+addNum);
    Scratch144EventUtilsDzijuo.instance.scratch144_send_msg_olcuzr(scratch144mbkrac: Scratch144EventCodeLmdqps.aUpdateCoinsfhwidhiw);
  }

  updateGuaKaNum(){
    aGuaKaNumfwofjow.saveData(aGuaKaNumfwofjow.getData()+1);
    Scratch144EventUtilsDzijuo.instance.scratch144_send_msg_olcuzr(scratch144mbkrac: Scratch144EventCodeLmdqps.aUpdateGuaKaNumfeifjoe);
  }

  int getCurrentLevel()=>aGuaKaNumfwofjow.getData() ~/ getLevelTotalPro();

  int getCurrentLevelPro()=>aGuaKaNumfwofjow.getData() % getLevelTotalPro();

  int getLevelTotalPro()=>5;
}