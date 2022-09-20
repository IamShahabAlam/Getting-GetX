import 'package:get/get.dart';

class Services extends GetxController  {
  var num = 1.obs; // Obs makes it dynamic/Reactive (it will update the var in app)
  IncreaseNum(){
    num += 1;
  }
}