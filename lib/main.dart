import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_routers_nxtyun/scratch144_router_address_qvjthh.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_router_list_dniwjow.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';

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
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (c,child)=>GetMaterialApp(
        title: "Scratch Boom",
        enableLog: true,
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.system,
        initialRoute: Scratch144RouterAddressQvjthh.aHome,
        debugShowCheckedModeBanner: false,
        getPages: Scratch144AaaRouterListDniwjow.list,
        defaultTransition: Transition.rightToLeft,
      ),
    );
  }
}
