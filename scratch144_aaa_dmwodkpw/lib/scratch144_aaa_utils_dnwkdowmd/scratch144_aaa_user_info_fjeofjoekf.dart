import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_bean_djwjofepf/scratch144_aaa_ach_bean_fjeifjoe.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_dialog_dwijijfie/scratch144_aaa_up_level_dialog_fjofjoe/scratch144_aaa_up_level_dialog_fjofjoe.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_ach_utils_hiwhow.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_staorage_wijfoefkoe.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_event_ipdmyu/scratch144_event_code_lmdqps.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_event_ipdmyu/scratch144_event_utils_dzijuo.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_routers_nxtyun/scratch144_router_utils_dnwkdjow.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_voice_utils_djeijfoiejf.dart';

class Scratch144AaaUserInfoFjeofjoekf{
  static final Scratch144AaaUserInfoFjeofjoekf _fjeofjoekf=Scratch144AaaUserInfoFjeofjoekf();
  static Scratch144AaaUserInfoFjeofjoekf get instance => _fjeofjoekf;

  updateUserCoinsdjwidjoiw(int addNum){
    aCoinsNumwdjowkod.saveData(aCoinsNumwdjowkod.getData()+addNum);
    if(addNum>0){
      Scratch144VoiceUtilsDjeijfoiejf.instance.playVoice(Scratch144VoiceTypefjiwfjo.money1);
    }
    Scratch144EventUtilsDzijuo.instance.scratch144_send_msg_olcuzr(scratch144Codembkrac: Scratch144EventCodeLmdqps.aUpdateCoinsfhwidhiw);
  }

  updateGuaKaNum(){
    aGuaKaNumfwofjow.saveData(aGuaKaNumfwofjow.getData()+1);
    Scratch144EventUtilsDzijuo.instance.scratch144_send_msg_olcuzr(scratch144Codembkrac: Scratch144EventCodeLmdqps.aUpdateGuaKaNumfeifjoe);
    if(getCurrentLevelPro()==0){
      Scratch144RouterUtilsDnwkdjow.instance.showDialogwouwojdw(child: Scratch144AaaUpLevelDialogFjofjoe());
    }
    Scratch144AaaAchUtilsHiwhow.instance.updateTask(Scratch144TaskTypefejifj.scratch);
  }

  int getCurrentLevel()=>aGuaKaNumfwofjow.getData() ~/ getLevelTotalPro();

  int getCurrentLevelPro()=>aGuaKaNumfwofjow.getData() % getLevelTotalPro();

  int getLevelTotalPro()=>5;

  int getAchLevelTotalProNum()=>3;

  updateAchInfo(){
    var data = aAchLevelfjewifjoe.getData();
    if(data<7){
      aAchLevelfjewifjoe.saveData(data+1);
      Scratch144EventUtilsDzijuo.instance.scratch144_send_msg_olcuzr(scratch144Codembkrac: Scratch144EventCodeLmdqps.aUpdateAchLevel);
    }
  }
}