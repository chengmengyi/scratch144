import 'dart:async';

import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_bean_djwjofepf/scratch144_aaa_card_list_bean_fjeifjeo.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_dialog_dwijijfie/scratch144_aaa_unlock_fwihfiw/scratch144_aaa_unlock_fwihfiw.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_card_list_utils_cheijoef.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_enum_djwdjow/scratch144_card_type_enum_dwidjow.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_event_ipdmyu/scratch144_event_code_lmdqps.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_con_sspacr.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_routers_nxtyun/scratch144_router_address_qvjthh.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_routers_nxtyun/scratch144_router_utils_dnwkdjow.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';

class Scratch144AaaCardChildControllerDhwidjwo extends Scratch144ConSspacr{
  List<Scratch144AaaCardListBeanFjeifjeo> cardList=[];
  Timer? _refreshTimer;

  @override
  void onInit() {
    super.onInit();
    _startRefreshTimer();
  }

  @override
  void onReady() {
    super.onReady();
    _initCardList();
  }

  clickPlay(Scratch144AaaCardListBeanFjeifjeo cardBean){
    if(cardBean.lock==1){
      Scratch144RouterUtilsDnwkdjow.instance.showDialogwouwojdw(
        child: Scratch144AaaUnlockFwihfiw(
          type: cardBean.cardType,
          unlockCallback: (){
            cardBean.lock=0;
            update(["list"]);
            clickPlay(cardBean);
          },
        ),
      );
      return;
    }
    if((cardBean.cardCurrentNum??0)<=0){
      scratch144ShowToastupfsnd(text: "No scratch card, please go to the next level！");
      return;
    }
    Scratch144RouterUtilsDnwkdjow.instance.toNamedsjwidjow(
      routerName: Scratch144RouterAddressQvjthh.aPlay,
      params: {"type":cardBean.cardType},
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

  _initCardList()async{
    var list = await Scratch144AaaCardListUtilsCheijoef.instance.getCardList();
    cardList.clear();
    cardList.addAll(list);
    update(["list"]);
  }

  Scratch144AaaCardListBeanFjeifjeo? getCardBean(Scratch144CardTypeEnumDwidjow type){
    var indexWhere = cardList.indexWhere((value)=>value.cardType==type);
    if(indexWhere<0){
      return null;
    }
    return cardList[indexWhere];
  }

  @override
  bool scratch144_init_event_fobikq() => true;

  @override
  void scratch144_handle_event_msg_bvsgpz(int eventCode, int? intValue, String? strValue, anyValue) {
    super.scratch144_handle_event_msg_bvsgpz(eventCode, intValue, strValue, anyValue);
    switch(eventCode){
      case Scratch144EventCodeLmdqps.aUnlockCard:
        var indexWhere = cardList.indexWhere((value)=>value.cardType==anyValue);
        if(indexWhere>=0){
          cardList[indexWhere].lock=0;
          update(["list"]);
        }
        break;
      case Scratch144EventCodeLmdqps.aUpdateCardInfo:
        _updateCardInfo(anyValue as Scratch144AaaCardListBeanFjeifjeo);
        break;
    }
  }

  _updateCardInfo(Scratch144AaaCardListBeanFjeifjeo bean){
    var indexWhere = cardList.indexWhere((value)=>value.cardType==bean.cardType);
    if(indexWhere>=0){
      cardList[indexWhere]=bean;
      update(["list"]);
    }
  }

  _startRefreshTimer(){
    _refreshTimer=Timer.periodic(Duration(milliseconds: 1000), (t){
      var updateList=false;
      for (var value in cardList) {
        if((value.refreshTime??0)>0){
          value.refreshTime=(value.refreshTime??0)-1;
          if((value.refreshTime??0)<=0){
            value.refreshTime=0;
            // value.cardCurrentNum=(value.cardCurrentNum??0)+1;
            value.cardCurrentNum=10;
          }
          Scratch144AaaCardListUtilsCheijoef.instance.updateCardInfo(value);
          updateList=true;
        }
      }
      if(updateList){
        update(["list"]);
      }
    },);
  }

  _stopRefreshTimer(){
    _refreshTimer?.cancel();
    _refreshTimer=null;
  }

  @override
  void onClose() {
    _stopRefreshTimer();
    super.onClose();
  }
}