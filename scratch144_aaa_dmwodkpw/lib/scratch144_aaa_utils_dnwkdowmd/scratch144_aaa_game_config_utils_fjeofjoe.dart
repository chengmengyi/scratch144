import 'dart:convert';
import 'dart:math';

import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_bean_djwjofepf/scratch144_aaa_game_config_bean_fjeifjoe.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_enum_djwdjow/scratch144_card_type_enum_dwidjow.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_local_ymevgx.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';

class Scratch144AaaGameConfigUtilsFjeofjoe{
  static final Scratch144AaaGameConfigUtilsFjeofjoe _configUtilsFjeofjoe=Scratch144AaaGameConfigUtilsFjeofjoe();
  static Scratch144AaaGameConfigUtilsFjeofjoe get instance => _configUtilsFjeofjoe;
  final Random _scratch144_random_uwpxte = Random();

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
    final List<MapEntry<int,int>> scratch144_tiger_weights_ntkqoi = <MapEntry<int,int>>[
      MapEntry<int,int>(0, cardTiger?.tiger0??40),
      MapEntry<int,int>(3, cardTiger?.tiger3??30),
      MapEntry<int,int>(4, cardTiger?.tiger4??10),
      MapEntry<int,int>(5, cardTiger?.tiger5??10),
      MapEntry<int,int>(6, cardTiger?.tiger6??8),
      MapEntry<int,int>(7, cardTiger?.tiger7??2),
      MapEntry<int,int>(8, cardTiger?.tiger8??0),
      MapEntry<int,int>(9, cardTiger?.tiger9??0),
      MapEntry<int,int>(10, cardTiger?.tiger10??0),
    ];

    int scratch144_total_weight_xnmlpc = 0;
    for(final MapEntry<int,int> scratch144_item_pxvgtf in scratch144_tiger_weights_ntkqoi){
      scratch144_total_weight_xnmlpc += max(0, scratch144_item_pxvgtf.value);
    }
    if(scratch144_total_weight_xnmlpc<=0){
      return 0;
    }

    final int scratch144_index_xnypcq = _scratch144_random_uwpxte.nextInt(scratch144_total_weight_xnmlpc);
    int scratch144_cursor_fnxqwu = 0;
    for(final MapEntry<int,int> scratch144_item_pxvgtf in scratch144_tiger_weights_ntkqoi){
      final int scratch144_weight_rynvkp = max(0, scratch144_item_pxvgtf.value);
      scratch144_cursor_fnxqwu += scratch144_weight_rynvkp;
      if(scratch144_index_xnypcq<scratch144_cursor_fnxqwu){
        return scratch144_item_pxvgtf.key;
      }
    }
    return 0;
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

  bool emojiHasReward()=>Random().nextInt(100)<(_gameConfigBean?.cardEmoji?.pointFace??40);

  bool bigGameHasReward()=>Random().nextInt(100)<(_gameConfigBean?.cardNumber?.point??40);

  //return = 0没有 1是1个7  2是1个77
  int hot7Num(){
    final Card77hot? scratch144_card77hot_hnvqpx = _gameConfigBean?.card77hot;
    final List<MapEntry<int, int>> scratch144_hot77_weights_hqvpmx =
        <MapEntry<int, int>>[
          MapEntry<int, int>(0, scratch144_card77hot_hnvqpx?.point0 ?? 40),
          MapEntry<int, int>(1, scratch144_card77hot_hnvqpx?.point7 ?? 40),
          MapEntry<int, int>(2, scratch144_card77hot_hnvqpx?.point77 ?? 20),
        ];
    int scratch144_total_weight_xnmlpc = 0;
    for (final MapEntry<int, int> scratch144_item_pxvgtf
        in scratch144_hot77_weights_hqvpmx) {
      scratch144_total_weight_xnmlpc += max(0, scratch144_item_pxvgtf.value);
    }
    if (scratch144_total_weight_xnmlpc <= 0) {
      return 0;
    }
    final int scratch144_index_xnypcq = _scratch144_random_uwpxte.nextInt(
      scratch144_total_weight_xnmlpc,
    );
    int scratch144_cursor_fnxqwu = 0;
    for (final MapEntry<int, int> scratch144_item_pxvgtf
        in scratch144_hot77_weights_hqvpmx) {
      scratch144_cursor_fnxqwu += max(0, scratch144_item_pxvgtf.value);
      if (scratch144_index_xnypcq < scratch144_cursor_fnxqwu) {
        return scratch144_item_pxvgtf.key;
      }
    }
    return 0;
  }

  bool luckyHas8Win()=>Random().nextInt(100)<(_gameConfigBean?.card8rich?.point8bet??20);

  bool luckyHas3IconWin()=>Random().nextInt(100)<(_gameConfigBean?.card8rich?.point3match??20);

  bool sweetHasWin()=>Random().nextInt(100)<(_gameConfigBean?.cardFruit?.point??75);

  bool isBigWin(int reward)=>reward>=3000;
}
