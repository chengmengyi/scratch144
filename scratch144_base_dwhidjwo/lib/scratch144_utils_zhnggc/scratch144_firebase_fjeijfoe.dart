import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_common_storage_iwgdlu.dart';

class Scratch144FirebaseFjeijfoe {
  static final Scratch144FirebaseFjeijfoe _fjeijfoe=Scratch144FirebaseFjeijfoe();
  static Scratch144FirebaseFjeijfoe get instance => _fjeijfoe;

  Function()? aGameConfigCallback;

  init()async{
    try{
      await Firebase.initializeApp();
      var remoteConfig=FirebaseRemoteConfig.instance;
      await remoteConfig.setConfigSettings(
        RemoteConfigSettings(
          fetchTimeout: const Duration(seconds: 10),
          minimumFetchInterval: const Duration(seconds: 1),
        ),
      );
      await remoteConfig.fetchAndActivate();
      _getFirebaseConfig(remoteConfig);
    }catch(e){
      await Future.delayed(const Duration(milliseconds: 1000));
      init();
    }
  }

  _getFirebaseConfig(FirebaseRemoteConfig remoteConfig){
    var winnow_number = remoteConfig.getString("winnow_number");
    if(winnow_number.isNotEmpty&&aGameConfigStrfeifjoe.getData().isEmpty){
      aGameConfigStrfeifjoe.saveData(winnow_number);
      aGameConfigCallback?.call();
    }
  }
}