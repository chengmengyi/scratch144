import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_con_sspacr.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_routers_nxtyun/scratch144_router_utils_dnwkdjow.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_local_ymevgx.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_voice_utils_djeijfoiejf.dart';

class Scratch144AaaSetDialogControllerFeikfjoe extends Scratch144ConSspacr{
  clickClose(){
    Scratch144RouterUtilsDnwkdjow.instance.closedwkpdkwpd();
  }

  clickBgm(){
    Scratch144VoiceUtilsDjeijfoiejf.instance.setPlayBgm();
    update(["bgm"]);
  }

  clickVoice(){
    Scratch144VoiceUtilsDjeijfoiejf.instance.setPlayVoice();
    update(["voice"]);
  }

  clickPrivacy(){
    Scratch144RouterUtilsDnwkdjow.instance.toWebfjeofoe(title: "Privacy Policy", url: Scratch144LocalYmevgx.privacy);
  }
  clickEmail(){
    FlutterTbaInfo.instance.jumpToEmail(Scratch144LocalYmevgx.email);
  }
}