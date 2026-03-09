import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_con_sspacr.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_routers_nxtyun/scratch144_router_utils_dnwkdjow.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_utils_zhnggc/scratch144_utils_zhnggc.dart';

class Scratch144WebControllerFjeofje extends Scratch144ConSspacr{

  var title="";
  late WebViewController controller;

  @override
  void onInit() {
    super.onInit();
    var map = Scratch144RouterUtilsDnwkdjow.instance.getParamsdwkepkpe();
    title=map["title"];
    _loadCommonUrl(map["url"]);
  }

  _loadCommonUrl(url){
    controller=WebViewController()..setJavaScriptMode(JavaScriptMode.unrestricted)..loadRequest(Uri.parse(url));
  }

  clickClose(){
    Scratch144RouterUtilsDnwkdjow.instance.closedwkpdkwpd();
  }
}