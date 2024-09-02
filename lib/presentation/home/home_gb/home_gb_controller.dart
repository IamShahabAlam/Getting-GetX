import 'dart:math';

import 'package:get/get.dart';

class HomeGBController extends GetxController {
  var count = 0;
  var isOpen = false;
  var age = 20.0;
  var intColor = 0xffffffff;

  onCountChange({bool forAdd = true}) {
    forAdd ? count++ : count -= 1;
    update(['count']);
  }

  onCountHold({bool forAdd = true}) {
    if (forAdd) {
      count++;
    } else {
      count -= 1;
    }

    update(['count']);
  }

  onTapStatus(boolVal) {
    isOpen = boolVal;
    update(['shop']);
  }

  onSlide(val) {
    age = val;
    update(['age']);
  }

  getRandomColor() {
    intColor = Random().nextInt(0xffffffff);
    update();
  }
}

class HomeGBBindings implements Bindings {
  @override
  void dependencies() => Get.lazyPut<HomeGBController>(() => HomeGBController());
}
