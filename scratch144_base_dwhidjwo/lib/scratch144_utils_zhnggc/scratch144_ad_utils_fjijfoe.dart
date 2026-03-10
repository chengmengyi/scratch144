import 'package:flutter/foundation.dart';
import 'package:flutter_android_ad_plugins/data/ad_info_data.dart';
import 'package:flutter_android_ad_plugins/data/config_ad_data.dart';
import 'package:flutter_android_ad_plugins/hep/ad_type.dart';
import 'package:flutter_android_ad_plugins/hep/ios_ad_callback.dart';
import 'package:flutter_android_ad_plugins/hep/ios_load_ad_result_callback.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_voice_utils_djeijfoiejf.dart';

class Scratch144AdUtilsFjijfoe {
  static final Scratch144AdUtilsFjijfoe _fjijfoe=Scratch144AdUtilsFjijfoe();
  static Scratch144AdUtilsFjijfoe get instance => _fjijfoe;

  initAd(){
    FlutterAndroidAdPlugins.instance.initMax(
      maxKey: "",
      topOnAppId: kDebugMode?"h69aa41af5d694":"h69aa410059a05",
      topOnAppKey: kDebugMode?"a35526b02f90cde541b65d3adbc5ca502":"a02e471666428fb97984a2ca6ccab4f35",
      data: _createAdDatafefoeof(),
      userConsent: true,
      doNotSell: false,
      fengKongLogic: (){
        return false;
      },
      iosLoadAdResultCallback: IosLoadAdResultCallback(
        startLoadAdCallback: (info){
        },
        loadAdSuccessCallback: (maxAd,info,loadTime){
        },
        loadAdFailCallback: (info,failReason){
        },
        initSdkSuccess: (time,platform){
        },
      ),
    );
  }

  showAdAAAAAAdjiwjdoiw({
    required Function(bool give) callback,
}){
    var resultData = FlutterAndroidAdPlugins.instance.getCacheResultData(AdType.reward);
    if(null==resultData){
      scratch144ShowToastupfsnd(text: "The advertisement failed to load. Please try again later");
      return;
    }
    FlutterAndroidAdPlugins.instance.showAd(
      adType: AdType.reward,
      iosAdCallback: IosAdCallback(
        showSuccess: (ad,info){
          Scratch144VoiceUtilsDjeijfoiejf.instance.stopBgm();
        },
        showFail: (info){
          Scratch144VoiceUtilsDjeijfoiejf.instance.playBgm();
          scratch144ShowToastupfsnd(text: "Failed to fetch ads. Please try again later");
        },
        closeAd: (ad,info,hasReward){
          Scratch144VoiceUtilsDjeijfoiejf.instance.playBgm();
          callback.call(true);
        },
        revenuePaid: (ad,info){

        },
      ),
    );
  }


  ConfigAdData _createAdDatafefoeof(){
    return ConfigAdData(
      maxShowNum: 100,
      maxClickNum: 100,
      priceSwitch: false,
      newInterList: [
        AdInfoData(adId: kDebugMode?"n1h6h0u4akkddu":"n1h6h0ov3cv4aa", adPlat: "topon", adType: AdType.interstitial, expireTime: 3000)
      ],
      newRewardList: [
        AdInfoData(adId: kDebugMode?"n1h6h0u4akk2rh":"n1h6h0ov3curv1", adPlat: "topon", adType: AdType.reward, expireTime: 3000)
      ],
    );
  }
}