import 'package:flutter_android_ad_plugins/flutter_android_ad_plugins.dart';
import 'package:flutter_app_lifecycle/app_state_observer.dart';
import 'package:flutter_app_lifecycle/flutter_app_lifecycle.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_voice_utils_djeijfoiejf.dart';

class Scratch144ApplifeUtilsFeifjoe {
  static final Scratch144ApplifeUtilsFeifjoe _feifjoe=Scratch144ApplifeUtilsFeifjoe();
  static Scratch144ApplifeUtilsFeifjoe get instance => _feifjoe;

  init(){
    FlutterAppLifecycle.instance.setCallObserver(
      AppStateObserver(
        call: (back){
          if(back){
            Scratch144VoiceUtilsDjeijfoiejf.instance.stopBgm();
          }else{
            if(!FlutterAndroidAdPlugins.instance.adShowing()){
              Scratch144VoiceUtilsDjeijfoiejf.instance.playBgm();
            }
          }
        },
      ),
    );
  }
}