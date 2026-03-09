import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_android_ad_plugins/flutter_android_ad_plugins.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_common_storage_iwgdlu.dart';

enum Scratch144VoiceTypefjiwfjo{
  money1,guaka1,
}

class Scratch144VoiceUtilsDjeijfoiejf {
  static final Scratch144VoiceUtilsDjeijfoiejf _djeijfoiejf=Scratch144VoiceUtilsDjeijfoiejf();
  static Scratch144VoiceUtilsDjeijfoiejf get instance => _djeijfoiejf;

  final AudioPlayer _bgmPlayer=AudioPlayer();

  initPlayer()async{
    final audioContext = AudioContext(
      android: const AudioContextAndroid(
        isSpeakerphoneOn: true,
        stayAwake: false,
        contentType: AndroidContentType.music,
        usageType: AndroidUsageType.media,
        audioFocus: AndroidAudioFocus.none,
      ),
      iOS: AudioContextIOS(
        category: AVAudioSessionCategory.playback,
        options: {
          AVAudioSessionOptions.mixWithOthers
        },
      ),
    );
    await AudioPlayer.global.setAudioContext(audioContext);
  }

  playBgm(){
    if(playBgmfejofej.getData()){
      _bgmPlayer.setVolume(0.5);
      _bgmPlayer.setReleaseMode(ReleaseMode.loop);
      _bgmPlayer.play(AssetSource("BGM1.mp3"));
    }
  }

  stopBgm(){
    _bgmPlayer.pause();
  }


  setPlayBgm(){
    if(playBgmfejofej.getData()){
      playBgmfejofej.saveData(false);
      _bgmPlayer.pause();
    }else{
      playBgmfejofej.saveData(true);
      playBgm();
    }
  }

  playVoice(Scratch144VoiceTypefjiwfjo type){
    if(FlutterAndroidAdPlugins.instance.adShowing()){
      return;
    }
    if(playVoicefeofjoe.getData()){
      AudioPlayer audio=AudioPlayer();
      if(type==Scratch144VoiceTypefjiwfjo.guaka1){
        audio.setVolume(1);
      }
      audio.onPlayerStateChanged.listen((state){
        if(state==PlayerState.completed){
          audio.dispose();
        }
      });
      audio.play(AssetSource("${type.name}.mp3"));
    }
  }


  setPlayVoice(){
    playVoicefeofjoe.saveData(!playVoicefeofjoe.getData());
  }
}