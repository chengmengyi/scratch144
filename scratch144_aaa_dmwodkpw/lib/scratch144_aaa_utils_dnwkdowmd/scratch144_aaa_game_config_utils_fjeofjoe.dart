import 'dart:convert';
import 'dart:math';

import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_bean_djwjofepf/scratch144_aaa_game_config_bean_fjeifjoe.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_enum_djwdjow/scratch144_card_type_enum_dwidjow.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_local_ymevgx.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';

class Scratch144AaaGameConfigUtilsFjeofjoe{
  static final Scratch144AaaGameConfigUtilsFjeofjoe _configUtilsFjeofjoe=Scratch144AaaGameConfigUtilsFjeofjoe();
  static Scratch144AaaGameConfigUtilsFjeofjoe get instance => _configUtilsFjeofjoe;

  Scratch144AaaGameConfigBeanFjeifjoe? _gameConfigBean;

  initConfig(){
    try{
      _gameConfigBean=Scratch144AaaGameConfigBeanFjeifjoe.fromJson(jsonDecode(Scratch144LocalYmevgx.localGameConfigBase64.base64()));
    }catch(e){
      _gameConfigBean=Scratch144AaaGameConfigBeanFjeifjoe.fromJson(jsonDecode(Scratch144LocalYmevgx.localGameConfigBase64.base64()));
    }
  }

  int getWinUpNum(Scratch144CardTypeEnumDwidjow type){
    switch(type){
      case Scratch144CardTypeEnumDwidjow.tiger:
      case Scratch144CardTypeEnumDwidjow.mega:
        return _gameConfigBean?.cardTiger?.winupNumber??100000;
      case Scratch144CardTypeEnumDwidjow.sweet:
      case Scratch144CardTypeEnumDwidjow.fruit:
        return _gameConfigBean?.cardFruit?.winupNumber??100000;
      case Scratch144CardTypeEnumDwidjow.moneyStorm:
      case Scratch144CardTypeEnumDwidjow.bigGame:
        return _gameConfigBean?.cardNumber?.winupNumber??100000;
      case Scratch144CardTypeEnumDwidjow.hot77:
        return _gameConfigBean?.card77hot?.winupNumber??100000;
      case Scratch144CardTypeEnumDwidjow.emoji:
        return _gameConfigBean?.cardEmoji?.winupNumber??100000;
      case Scratch144CardTypeEnumDwidjow.luckyRich:
        return _gameConfigBean?.card8rich?.winupNumber??100000;
    }
  }

  int getTigerNum(){
    var cardTiger = _gameConfigBean?.cardTiger;
    var tiger0 = cardTiger?.tiger0??40;
    var tiger3 = cardTiger?.tiger3??30;
    var tiger4 = cardTiger?.tiger4??10;
    var tiger5 = cardTiger?.tiger5??10;
    var tiger6 = cardTiger?.tiger6??8;
    var tiger7 = cardTiger?.tiger7??8;
    var tiger8 = cardTiger?.tiger8??0;
    var tiger9 = cardTiger?.tiger9??0;
    var tiger10 = cardTiger?.tiger10??0;
    var index = Random().nextInt(100);
    if(index<tiger0){
      return 0;
    }else if(index>=tiger0&&index<(tiger0+tiger3)){
      return 3;
    }else if(index>=(tiger0+tiger3)&&index<(tiger0+tiger3+tiger4)){
      return 4;
    }else if(index>=(tiger0+tiger3+tiger4)&&index<(tiger0+tiger3+tiger4+tiger5)){
      return 5;
    }else if(index>=(tiger0+tiger3+tiger4+tiger5)&&index<(tiger0+tiger3+tiger4+tiger5+tiger6)){
      return 6;
    }else if(index>=(tiger0+tiger3+tiger4+tiger5+tiger6)&&index<(tiger0+tiger3+tiger4+tiger5+tiger6+tiger7)){
      return 7;
    }else if(index>=(tiger0+tiger3+tiger4+tiger5+tiger6+tiger7)&&index<(tiger0+tiger3+tiger4+tiger5+tiger6+tiger7+tiger8)){
      return 8;
    }else if(index>=(tiger0+tiger3+tiger4+tiger5+tiger6+tiger7+tiger8)&&index<(tiger0+tiger3+tiger4+tiger5+tiger6+tiger7+tiger8+tiger9)){
      return 9;
    } else{
      return 10;
    }
  }

  int getRewardNum(Scratch144CardTypeEnumDwidjow type){
    List<int> list=[];
    switch(type){
      case Scratch144CardTypeEnumDwidjow.tiger:
      case Scratch144CardTypeEnumDwidjow.mega:
        list=_gameConfigBean?.cardTiger?.prize??[2000,3000];
        break;
      case Scratch144CardTypeEnumDwidjow.sweet:
      case Scratch144CardTypeEnumDwidjow.fruit:
        list=_gameConfigBean?.cardFruit?.prize??[2000,3000];
        break;
      case Scratch144CardTypeEnumDwidjow.moneyStorm:
      case Scratch144CardTypeEnumDwidjow.bigGame:
        list=_gameConfigBean?.cardNumber?.prize??[2000,3000];
        break;
      case Scratch144CardTypeEnumDwidjow.hot77:
        list=_gameConfigBean?.card77hot?.prize??[2000,3000];
        break;
      case Scratch144CardTypeEnumDwidjow.emoji:
        list=_gameConfigBean?.cardEmoji?.prize??[2000,3000];
        break;
      case Scratch144CardTypeEnumDwidjow.luckyRich:
        list=_gameConfigBean?.card8rich?.prize??[2000,3000];
        break;
    }
    if(list.isEmpty){
      return 1000;
    }
    if(list.length==1){
      return list.first;
    }
    var min = list.first;
    var max = list.last;
    return min + Random().nextInt(max - min + 1);
  }
}