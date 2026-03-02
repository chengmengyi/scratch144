import 'dart:convert';

import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_bean_djwjofepf/scratch144_aaa_game_config_bean_fjeifjoe.dart';
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

}