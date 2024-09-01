import 'package:get/get.dart';
import 'package:getx_app/main.dart';
import 'package:getx_app/presentation/general/general_controller.dart';
import 'package:getx_app/presentation/general/views/screen1.dart';
import 'package:getx_app/presentation/general/views/screen2.dart';
import 'package:getx_app/presentation/general/views/screen3.dart';
import 'package:getx_app/presentation/general/views/screen4.dart';
import 'package:getx_app/presentation/general/views/screen5.dart';
import 'package:getx_app/presentation/general/views/screen6.dart';
import 'package:getx_app/presentation/general/views/screen7.dart';
import 'package:getx_app/presentation/general/views/screen8.dart';
import 'package:getx_app/presentation/home/home_gb/home_gb_controller.dart';
import 'package:getx_app/presentation/home/home_gb/home_gb_view.dart';
import 'package:getx_app/presentation/home/home_obx/home_obx_controller.dart';
import 'package:getx_app/presentation/home/home_obx/home_obx_view.dart';
import 'package:getx_app/presentation/home/home_stf/home_stf_view.dart';
import 'package:getx_app/presentation/home/home_stf_vn/home_stf_vn_view.dart';
import 'package:getx_app/routes/page_names.dart';

class appRoutes {
  static final appRoutesList = [
    CustomGetPage(name: PageNames.main, page: MyApp()),
    CustomGetPage(name: PageNames.screen1, page: Screen1()),
    CustomGetPage(name: PageNames.screen2, page: Screen2()),
    CustomGetPage(name: PageNames.screen3, page: Screen3()),
    CustomGetPage(name: PageNames.screen4, page: Screen4()),
    CustomGetPage(name: PageNames.screen5, page: Screen5()),
    CustomGetPage(name: PageNames.screen6, page: Screen6()),
    CustomGetPage(name: PageNames.screen7, page: Screen7()),
    CustomGetPage(name: PageNames.screen8, page: Screen8()),
    CustomGetPage(name: PageNames.homeOBX, page: HomeOBXScreen(),binding: HomeOBXBindings()),
    CustomGetPage(name: PageNames.homeGB, page: HomeGBScreen(),binding: HomeGBBindings()),
    CustomGetPage(name: PageNames.homeSTF, page: HomeSTFScreen()),
    CustomGetPage(name: PageNames.homeSTF_VN, page: HomeSTF_VN_Screen()),
  ];

  static GetPage CustomGetPage({ required String name,required  page, Bindings? binding}) {
    return GetPage(
    name: name,
    page: () =>  page,
    binding: binding ?? AllBindings(),
    transition: Transition.circularReveal,
    transitionDuration: const Duration(milliseconds: 600),
  );
  }
}
