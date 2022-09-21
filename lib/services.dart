
import 'package:get/get.dart';

class Services extends GetxController{

  var num = 1.obs;  // Obs makes it dynamic/Reactive/Observable (it will update the var in app)

  increment(){
    num += 1;
  }

  decrement(){
    num -= 1;
  }
}