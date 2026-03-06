enum Scratch144TaskTypefejifj{
  openApp,scratch,
}

class Scratch144AaaAchBeanFjeifjoe {
  Scratch144AaaAchBeanFjeifjoe({
      this.taskType, 
      this.currentPro, 
      this.totalPro, 
      this.taskText, 
      this.reward,
      this.todayTime,
  });

  Scratch144AaaAchBeanFjeifjoe.fromJson(dynamic json) {
    try{
      var type = json['taskType'];
      taskType=Scratch144TaskTypefejifj.values.byName(type);
    }catch(e){

    }
    currentPro = json['currentPro'];
    todayTime = json['todayTime'];
    totalPro = json['totalPro'];
    taskText = json['taskText'];
    reward = json['reward'];
  }
  Scratch144TaskTypefejifj? taskType;
  String? todayTime;
  int? currentPro;
  int? totalPro;
  String? taskText;
  int? reward;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['taskType'] = taskType?.name;
    map['currentPro'] = currentPro;
    map['totalPro'] = totalPro;
    map['taskText'] = taskText;
    map['reward'] = reward;
    map['todayTime'] = todayTime;
    return map;
  }

}