import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_bean_djwjofepf/scratch144_aaa_ach_bean_fjeifjoe.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_dialog_dwijijfie/scratch144_aaa_win_dialog_fjeifjoej/scratch144_aaa_win_dialog_fjeifjoej.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_ach_utils_hiwhow.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_event_ipdmyu/scratch144_event_code_lmdqps.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_con_sspacr.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_routers_nxtyun/scratch144_router_utils_dnwkdjow.dart';

class Scratch144AaaAchControllerFoejfoe extends Scratch144ConSspacr{
  List<Scratch144AaaAchBeanFjeifjoe> achList=[];
  @override
  void onReady() {
    super.onReady();
    _initAchList();
  }

  _initAchList()async{
    achList.clear();
    var list = await Scratch144AaaAchUtilsHiwhow.instance.getAchList();
    achList.addAll(list);
    update(["list","level"]);
  }

  int getCompletedTaskNum() => achList.where((value)=>(value.currentPro??0)>=(value.totalPro??0)).length;
  
  clickAch(Scratch144AaaAchBeanFjeifjoe bean){
    if((bean.currentPro??0)<(bean.totalPro??0)||bean.received==1){
      return;
    }
    Scratch144RouterUtilsDnwkdjow.instance.showDialogwouwojdw(
      child: Scratch144AaaWinDialogFjeifjoej(
        reward: bean.reward??0,
        callback: ()async{
          var result = await Scratch144AaaAchUtilsHiwhow.instance.received(bean);
          if(result){
            bean.received=1;
            update(["list"]);
          }
        },
      ),
    );
  }

  @override
  bool scratch144_init_event_fobikq() => true;

  @override
  void scratch144_handle_event_msg_bvsgpz(int eventCode, int? intValue, String? strValue, anyValue) {
    super.scratch144_handle_event_msg_bvsgpz(eventCode, intValue, strValue, anyValue);
    switch(eventCode){
      case Scratch144EventCodeLmdqps.aUpdateAchTask:
        _initAchList();
        break;
      case Scratch144EventCodeLmdqps.aUpdateAchLevel:
        update(["level"]);
        break;
    }
  }
}