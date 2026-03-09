import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scratch144/scratch144_launch_dwkjdow/scratch144_launch_page_dwkjdow.dart';
import 'package:scratch144/scratch144_web_fjeofje/scratch144_web_fjeofje.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_ach_utils_hiwhow.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_card_list_utils_cheijoef.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_game_config_utils_fjeofjoe.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_routers_nxtyun/scratch144_router_address_qvjthh.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_router_list_dniwjow.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_firebase_fjeijfoe.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_voice_utils_djeijfoiejf.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarDividerColor: null,
        statusBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
      )
  );
  await GetStorage.init();

  //a
  Scratch144VoiceUtilsDjeijfoiejf.instance.initPlayer();
  Scratch144AaaGameConfigUtilsFjeofjoe.instance.initConfig();
  Scratch144AaaCardListUtilsCheijoef.instance.initCardList();
  Scratch144AaaAchUtilsHiwhow.instance.initTodayAch();
  Scratch144FirebaseFjeijfoe.instance.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<GetPage> list=[
      GetPage(
        name: "/launch",
        page: ()=> Scratch144LaunchPageDwkjdow(),
        transition: Transition.rightToLeft,
      ),
      GetPage(
        name: "/web",
        page: ()=> Scratch144WebFjeofje(),
        transition: Transition.rightToLeft,
      ),
    ];
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (c,child)=>GetMaterialApp(
        title: "Scratch Boom",
        enableLog: true,
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.system,
        initialRoute: "/launch",
        debugShowCheckedModeBanner: false,
        getPages: Scratch144AaaRouterListDniwjow.list+list,
        defaultTransition: Transition.rightToLeft,
      ),
    );
  }
}
