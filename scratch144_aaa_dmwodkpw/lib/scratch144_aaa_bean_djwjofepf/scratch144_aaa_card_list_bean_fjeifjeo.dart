import 'package:scratch144_base_dwhidjwo/scratch144_enum_djwdjow/scratch144_card_type_enum_dwidjow.dart';

class Scratch144AaaCardListBeanFjeifjeo {
  Scratch144AaaCardListBeanFjeifjeo({
      this.cardType, 
      this.cardCurrentNum, 
      this.cardTotalNum, 
      this.refreshTime, 
      this.lock,});

  Scratch144AaaCardListBeanFjeifjeo.fromJson(dynamic json) {
    try{
      var type = json['cardType'];
      cardType=Scratch144CardTypeEnumDwidjow.values.byName(type);
    }catch(e){

    }
    cardCurrentNum = json['cardCurrentNum'];
    cardTotalNum = json['cardTotalNum'];
    refreshTime = json['refreshTime'];
    lock = json['lock'];
  }
  Scratch144CardTypeEnumDwidjow? cardType;
  int? cardCurrentNum;
  int? cardTotalNum;
  int? refreshTime;
  int? lock;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cardType'] = cardType?.name;
    map['cardCurrentNum'] = cardCurrentNum;
    map['cardTotalNum'] = cardTotalNum;
    map['refreshTime'] = refreshTime;
    map['lock'] = lock;
    return map;
  }

}