import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Services extends GetxController{

  var num = 1.obs;  // Obs makes it dynamic/Reactive/Observable (it will update the var in app)

  // Declaring variable by all (3) ways
  // 1st
  // var name = RxString("Shahab Alam");

  //2nd
  // var name = Rx<String>("Shahab Alam");

  //3rd  (Most East , Preferred )
  RxString name = "Shahab Alam".obs;

  increment(){
    num++;
  }

  decrement(){
    num -= 1;
  }

   snack(){
    Get.snackbar(
        "Decrement",
        "Going Down Sir!!!",
        snackPosition: SnackPosition.BOTTOM,
        padding: EdgeInsets.all(10.0),
        animationDuration: Duration(seconds: 3),
        backgroundColor: Colors.grey[200],
        borderColor: Color(0xffA020F0),
        borderWidth: 2.0,
        borderRadius: 0.0,
        dismissDirection: DismissDirection.horizontal,
        isDismissible: true,
        overlayColor: Colors.grey.withOpacity(0.5),
        overlayBlur: 0.5,
        showProgressIndicator: true,
        leftBarIndicatorColor: Colors.white,
        icon: Icon(Icons.trending_down, color: Colors.purple,),
    );
   }

    Dialogbox(){
     Get.defaultDialog(
      title: "LogOut",
      content: Column(
        children: [
          CircularProgressIndicator(strokeWidth: 10.0 , ),
          SizedBox(height: 10.0,),
          Text("Do you want to logout ?"),
        ],
      ),

      actions: [
        TextButton(
            onPressed: (){},
            child: Text("Cancel" , style: TextStyle(color: Colors.purple),)),

        ElevatedButton(
            onPressed: (){},
            child: Text("Logout")),
       ],
      );
    }


    BottomSheet(){
      Get.bottomSheet(
          Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Select Theme", style: TextStyle(fontSize: 22.0, color: Colors.white),),
              TextButton(
                  onPressed: (){
                    Get.changeTheme(ThemeData.light());
                                },
                  child: Text("☀ Light Theme")),

              TextButton(
                  onPressed: (){
                Get.changeTheme(ThemeData.dark());
              },
                  child: Text("🌙 ️ Dark Theme"))
            ],
          ),

        // Properties comes after the Parameters
        backgroundColor: Colors.grey,
        barrierColor: Colors.black.withOpacity(0.6),
        enableDrag: true,
      );
    }

    Theme(){
      Get.changeTheme(Get.isDarkMode?ThemeData.light():ThemeData.dark());
    }

 // ---------------------------------------------------------
    // Simple State Manager

    int count = 10;

  simpleIncrement(){
    count++;

    update();       // it updates the widget
  }

}