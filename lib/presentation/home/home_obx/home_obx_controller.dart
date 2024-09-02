import 'dart:math';

import 'package:get/get.dart';

class OBXHomeController extends GetxController {
  var count = 0.obs;
  var isOpen = false.obs;
  var age = 20.0.obs;
  var intColor = 0xffffffff.obs;

  onCountChange({bool forAdd = true}){
    forAdd ? count.value++ : count -= 1;
  }
  onCountHold({bool forAdd = true}){
    if(forAdd){ 
      count.value++;
      } else {
         count -= 1;
         }
  }

  onTapStatus(boolVal) => isOpen.value = boolVal;

  onSlide(val) => age.value = val;

  getRandomColor() => intColor.value = Random().nextInt(0xffffffff);
}

class HomeOBXBindings implements Bindings {
  @override
  void dependencies() => Get.lazyPut<OBXHomeController>(() => OBXHomeController());
}
