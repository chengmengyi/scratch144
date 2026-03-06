import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_bean_djwjofepf/scratch144_aaa_ach_bean_fjeifjoe.dart';
import 'package:scratch144_aaa_dmwodkpw/scratch144_aaa_utils_dnwkdowmd/scratch144_aaa_ach_utils_hiwhow.dart';
import 'package:scratch144_base_dwhidjwo/scratch144_page_yyclzs/scratch144_con_sspacr.dart';

class Scratch144AaaAchControllerFoejfoe extends Scratch144ConSspacr{
  List<Scratch144AaaAchBeanFjeifjoe> achList=[];
  @override
  void onReady() {
    super.onReady();
    _initAchList();
  }

  _initAchList()async{
    achList.clear();
    var list = await Scratch144AaaAchUtilsHiwhow.instance.getAchList();
    achList.addAll(list);
    update(["list"]);
  }
}