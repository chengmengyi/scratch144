import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_dialog_dwijijfie/scratch144_aaa_win_dialog_fjeifjoej/scratch144_aaa_win_dialog_fjeifjoej.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_card_list_utils_cheijoef.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_play_listener.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_staorage_wijfoefkoe.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_user_info_fjeofjoekf.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_enum_djwdjow/scratch144_card_type_enum_dwidjow.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_event_ipdmyu/scratch144_event_code_lmdqps.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_event_ipdmyu/scratch144_event_utils_dzijuo.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_con_sspacr.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_routers_nxtyun/scratch144_router_utils_dnwkdjow.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_voice_utils_djeijfoiejf.dart';
import '../../scratch144_aaa_dialog_dwijijfie/scratch144_aaa_play_fail_dialog_fjeojfoe/scratch144_aaa_play_fail_dialog_fjeojfoe.dart';

class Scratch144AaaPlayControllerFjkoekoe extends Scratch144ConSspacr
    implements Scratch144AaaPlayListener {
  var start = false;
  bool scratch144_show_scratch_guide_upnejl = true;
  late Scratch144CardTypeEnumDwidjow type;

  @override
  void onInit() {
    super.onInit();
    type = Scratch144RouterUtilsDnwkdjow.instance.getParamsdwkepkpe()["type"];
    scratch144_show_scratch_guide_upnejl=aShowGuaKaGuidefejfieo.getData();
  }

  String getBgImages() {
    switch (type) {
      case Scratch144CardTypeEnumDwidjow.tiger:
        return "play_tiger_bg";
      case Scratch144CardTypeEnumDwidjow.emoji:
        return "play_emoji_bg";
      case Scratch144CardTypeEnumDwidjow.bigGame:
        return "play_big_bg";
      case Scratch144CardTypeEnumDwidjow.hot77:
        return "play_hot_bg";
      case Scratch144CardTypeEnumDwidjow.luckyRich:
        return "play_lucky_bg";
      case Scratch144CardTypeEnumDwidjow.sweet:
        return "play_sweet_bg";
      case Scratch144CardTypeEnumDwidjow.moneyStorm:
        return "play_money_bg";
      case Scratch144CardTypeEnumDwidjow.fruit:
        return "play_fruit_bg";
      case Scratch144CardTypeEnumDwidjow.mega:
        return "play_mega_bg";
    }
  }

  @override
  startPlay(Scratch144CardTypeEnumDwidjow type) {
    start = true;
    scratch144_show_scratch_guide_upnejl = false;
    update(["page"]);
    Scratch144VoiceUtilsDjeijfoiejf.instance.playVoice(
      Scratch144VoiceTypefjiwfjo.guaka1,
    );
  }

  @override
  playResult(Scratch144CardTypeEnumDwidjow type, int reward) {
    if (reward <= 0) {
      Scratch144RouterUtilsDnwkdjow.instance.showDialogwouwojdw(
        child: Scratch144AaaPlayFailDialogFjeojfoe(
          callback: () {
            _resetCard(type);
          },
        ),
      );
      return;
    }
    Scratch144RouterUtilsDnwkdjow.instance.showDialogwouwojdw(
      child: Scratch144AaaWinDialogFjeifjoej(
        reward: reward,
        callback: () {
          _resetCard(type);
        },
      ),
    );
  }

  _resetCard(Scratch144CardTypeEnumDwidjow type) async {
    start = false;
    scratch144_show_scratch_guide_upnejl = false;
    aShowGuaKaGuidefejfieo.saveData(false);
    Scratch144AaaUserInfoFjeofjoekf.instance.updateGuaKaNum();
    var currentCardNum = await Scratch144AaaCardListUtilsCheijoef.instance
        .updateCardCurrentNum(type, -1);
    if (currentCardNum > 0) {
      update(["page"]);
      Scratch144EventUtilsDzijuo.instance.scratch144_send_msg_olcuzr(
        scratch144Codembkrac: Scratch144EventCodeLmdqps.aResetPlayView,
        scratch144Anyhqnitu: type,
      );
      return;
    }
    var nextType = await Scratch144AaaCardListUtilsCheijoef.instance
        .getNextCardType(type);
    if (null == nextType) {
      scratch144ShowToastupfsnd(text: "Please wait for updates");
      Scratch144RouterUtilsDnwkdjow.instance.closedwkpdkwpd();
      return;
    }
    this.type = nextType;
    update(["page"]);
  }

  clickRevealAll() {
    if (start) {
      return;
    }
    scratch144_show_scratch_guide_upnejl = false;
    update(["page"]);
    Scratch144EventUtilsDzijuo.instance.scratch144_send_msg_olcuzr(
      scratch144Codembkrac: Scratch144EventCodeLmdqps.aAutoPlay,
      scratch144Anyhqnitu: type,
    );
  }

  clickHome() {
    if (start) {
      return;
    }
    Scratch144RouterUtilsDnwkdjow.instance.closedwkpdkwpd();
  }
}
